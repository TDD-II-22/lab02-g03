# Nombre del proyecto

## 1. Abreviaturas y definiciones
- **FPGA**: Field Programmable Gate Arrays

## 2. Referencias
[0] David Harris y Sarah Harris. *Digital Design and Computer Architecture. RISC-V Edition.* Morgan Kaufmann, 2022. ISBN: 978-0-12-820064-3

## 3. Desarrollo

<!--
### 3.1 Módulo "genérico"
#### 1. Encabezado del módulo
```SystemVerilog
module mi_modulo(
    input logic     entrada_i,      
    output logic    salida_i 
    );
```
#### 2. Parámetros
- Lista de parámetros

#### 3. Entradas y salidas:
- `entrada_i`: descripción de la entrada
- `salida_i`: descripción de la salida

#### 4. Criterios de diseño
Diagramas, texto explicativo...

#### 5. Testbench
Descripción y resultados de las pruebas hechas

-->

### 3.0 Modulos compartidos

#### 3.0.1 WCLK.xci
El archivo WCLL.xci crea un archivo verilog que contiene un circuito de reloj personalizado según los requisitos del reloj del usuario.

##### 1. Encabezado del módulo

```SystemVerilog

module WCLK (
  // Clock out ports
  output        CLK_10MHZ,
  // Status and control signals
  output        locked,
  // Clock in ports
  input         CLK_100MHZ
 );
	
```

##### 2. Parámetros
El módulo no posee parámetros.

##### 3. Entradas y salidas:
- `CLK_100MHZ`: Entrada de reloj del módulo
- `locked`: Salida del módulo. Presenta un pulso una vez que el bloque WCLK se estabiliza.
- `CLK_10MHZ`: Salida del módulo. Genera un reloj con un periodo de 100ns.

##### 5. Testbench
No se ha diseñado un testbench para este bloque.

<!--FINAL DEL MODULO-->

#### 3.0.2 module_clock_catodo
El módulo module_clock_catodo genera un pulso de salida en `1` en un periodo de 100ms.

##### 1. Encabezado del módulo

```SystemVerilog

module module_clock_catodo #(parameter COUNT_CATODO = 20_000_000, BITS_CATODO = 14)(

    input   logic   clk_10Mhz_i,
                    reset_i,
    output  logic   clock_catodo_o 
    
    );
	
```

##### 2. Parámetros
- `COUNT_CATODO`: define cantidad a contar para realizar un periodo de dado.
- `BITS_CATODO`: define la cantidad de bits que necesita el `COUNT_CATODO`.


##### 3. Entradas y salidas:
- `clk_10Mhz_i`: Entrada de reloj del módulo.
- `reset_pi`: Entrada del módulo. Reinicia el sistema cuando esta `1`.
- `clock_catodo_o`: Salida del módulo. Envia un pulso con un periodo determiado.

##### 5. Testbench
No se ha diseñado un testbench para este bloque.

<!--FINAL DEL MODULO-->

#### 3.0.3 module_seg7_control
El módulo module_seg7_control genera una señal `display_o` y `display_select_o`
utilizados para controlar los 8 display de 7 segmentos de la FPGA.

##### 1. Encabezado del módulo

```SystemVerilog

module module_seg7_control #(parameter COUNT_ANODO = 10_000, BITS_ANODO = 14)(
    
    input   logic               clk_10Mhz_i,
                                reset_i,
                    [31 : 0]    display_i,
    output  logic   [6 : 0]     display_o,
                    [7 : 0]     display_select_o
    
    );
	
```

##### 2. Parámetros
- `COUNT_ANODO`: define cantidad a contar para realizar un periodo de dado.
- `BITS_ANODO`: define la cantidad de bits que necesita el `COUNT_ANODO`.


##### 3. Entradas y salidas:
- `clk_10Mhz_i`: Entrada de reloj del módulo.
- `reset_pi`: Entrada del módulo. Reinicia el sistema cuando esta `1`.
- `display_i`: Entrada del módulo. Recibe el dato de `32 bits`  que se va a mostrar en el display.
- `display_o`: Salida del módulo. Envia el dato de `7 bits` que se va a enviar al cátodo de los display.
- `display_select_o`: Entrada del módulo. Envia el dato de `8 bits` que se va a enviar al ánodo de los display.

##### 5. Testbench
No se ha diseñado un testbench para este bloque.

<!--FINAL DEL MODULO-->


### 3.1 Ejercicio 1. Uso del PLL IP-core

#### 3.1.1 module_digitos
El módulo module_digitos genera un contador en decimal de `32 bits`. 

##### 1. Encabezado del módulo

```SystemVerilog

module module_digitos(
    
    input   logic               clk_10Mhz_i,    
                                clock_catodo_en_i,
                                reset_i,
                                
    output  logic   [31 : 0]    digitos_o
    
    );
	
```

##### 2. Parámetros
Este modulo no tiene parametros.

##### 3. Entradas y salidas:
- `clk_10Mhz_i`: Entrada de reloj del módulo.
- `reset_pi`: Entrada del módulo. Reinicia el sistema cuando esta `1`.
- `clock_catodo_en_i`: Entrada del módulo. Recibe una señal habilitadora con un periodo determinado.
- `digitos_o`: Salida del módulo. Envia el dato de `32 bits` que contiene el contador decimal.

##### 5. Testbench
No se ha diseñado un testbench para este bloque.

<!--FINAL DEL MODULO-->


#### 3.1.2 top_module_contador_7seg 
Es el módulo TOP del sistema utilzado en la FPGA. Se hace instancia a los modulos WCLK, module_clock_catodo, module_digitos, module_seg7_control.

##### 1. Encabezado del módulo
```SystemVerilog

module top_module_contador_7seg(

    input   logic               clk_100Mhz_pi,
                                reset_pi,
    output  logic   [6 : 0]     display_po,
                    [7 : 0]     display_select_po
    );

```
##### 2. Parámetros
Este módulo no posee parámetros.

##### 3. Entradas y salidas:
- `clk_10Mhz_i`: Entrada de reloj de la FPGA al módulo.
- `reset_pi`: Entrada del módulo. Reinicia el sistema cuando esta `1`.
- `display_po`: Salida del módulo. Envia el dato de `7 bits` que se va a enviar al cátodo de los display de la FPGA.
- `display_select_po`: Entrada del módulo. Envia el dato de `8 bits` que se va a enviar al ánodo de los display de la FPGA.

##### 4. Criterios de diseño
 a. El módulo se basa en el siguiente diagrama de bloques.
<img src="https://github.com/TDD-II-22/lab02-g03/blob/main/Images/lab2TD_ejec1.png" width="600" >\
Según se observa, la entrada de este bloque esta dado por un reloj de 100MHz y un botón, ambos pertenecientes a la FPGA. La señal generada por el reloj pasa por un bloque PLL. 
Una vez se genera una nueva señal reloj de 10MHz esta es utilizada por el resto de bloques. El modulo clock_catodo genera por medio del reloj anterior un pulso en un periodo determinado, este pulso es recibido 
por el modulo module_digitos, el cual, genera un contador en decimal que va aumentando cada impulso recibido. 
Este contador es enviado al bloque module_seg7_control, el cual, procesa dicha información para ser mostrada en los display de 7 segmentos de la FPGA mediante una frecuencia determinada. El boton se encarga de reiniciar el sistema e inicializar el contador en 0.

b. Se definió los parámetros `COUNT_CATODO`, `BITS_CATODO`, `COUNT_ANODO` y `BITS_ANODO` para permitir que el sistema pueda adaptarse a distintas frecuencias segun sea requerido.
Los valores de estos parámetros son: `1_000_000`, `20`, `10_000` y `14` respectivamente.  Dado que se va desea trabajar a una frecuencia de 10Hz para los cambios del cátodo y 1KHz para el refrescamiento del ánodo.

##### 5. Testbench
No se ha diseñado un testbench para este bloque.

##### 6. Constraints

Los pines asignados son:

| Señal         		| Pin   | En tarjeta    |
| ----------------------|:-----:| -------------:|
| clk_100Mhz_pi        	| E3    | CLK100MHZ     |
| reset_pi        		| E16   | BTNC          |
| display_po[0]     	| L3	| CA            |
| display_po[1]     	| N1	| CB            |
| display_po[2]     	| L5	| CC            |
| display_po[3]     	| L4	| CD            |
| display_po[4]     	| K3	| CE            |
| display_po[5]     	| M2	| CF            |
| display_po[6]     	| L6	| CG            |
| display_select_po[0]  | N6	| AN0           |
| display_select_po[1]  | M6	| AN1           |
| display_select_po[2]  | M3	| AN2           |
| display_select_po[3]  | N5	| AN3           |
| display_select_po[4]  | N2	| AN4           |
| display_select_po[5]  | N4	| AN5           |
| display_select_po[6]  | L1	| AN6           |
| display_select_po[7]  | M1	| AN7           |

Se definieron las siguientes constraints:


```sdc

set_property PACKAGE_PIN E3 [get_ports clk_100Mhz_pi]
    set_property IOSTANDARD LVCMOS33 [get_ports clk_100Mhz_pi]
    create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_100Mhz_pi]

set_property PACKAGE_PIN E16 [get_ports reset_pi]
	set_property IOSTANDARD LVCMOS33 [get_ports reset_pi]
	
set_property PACKAGE_PIN L3 [get_ports {display_po[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[0]}]
	
set_property PACKAGE_PIN N1 [get_ports {display_po[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[1]}]	
	
set_property PACKAGE_PIN L5 [get_ports {display_po[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[2]}]	
	
set_property PACKAGE_PIN L4 [get_ports {display_po[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[3]}]

set_property PACKAGE_PIN K3 [get_ports {display_po[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[4]}]

set_property PACKAGE_PIN M2 [get_ports {display_po[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[5]}]

set_property PACKAGE_PIN L6 [get_ports {display_po[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[6]}]

set_property PACKAGE_PIN N6 [get_ports {display_select_po[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[0]}]

set_property PACKAGE_PIN M6 [get_ports {display_select_po[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[1]}]

set_property PACKAGE_PIN M3 [get_ports {display_select_po[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[2]}]

set_property PACKAGE_PIN N5 [get_ports {display_select_po[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[3]}]
	
set_property PACKAGE_PIN N2 [get_ports {display_select_po[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[4]}]	
	
set_property PACKAGE_PIN N4 [get_ports {display_select_po[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[5]}]	
	
set_property PACKAGE_PIN L1 [get_ports {display_select_po[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[6]}]	
	
set_property PACKAGE_PIN M1 [get_ports {display_select_po[7]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[7]}]
	
````

#### 3.1.3 top_simulate 
Es el módulo TOP del sistema utilizado para simulación. Se hace instancia al módulo WCLK.

##### 1. Encabezado del módulo
```SystemVerilog

module top_simulate(
    
    input   logic       clk_100Mhz_i,
    output  logic       clk_10Mhz_o,
                        locked_o
    );

```
##### 2. Parámetros
Este módulo no posee parámetros.

##### 3. Entradas y salidas:
- `clk_10Mhz_i`: Entrada de reloj de la FPGA al módulo.
- `clk_10Mhz_o`: Salida del módulo. Envia el reloj generado por el PLL al Testbench.
- `locked_o`: Salida del módulo. Envia un `1` al testbench una vez estabilizado el PLL.

##### 4. Criterios de diseño
 a. El módulo se basa en el siguiente diagrama de bloques.
<img src="https://github.com/TDD-II-22/lab02-g03/blob/main/Images/lab2TD_ejec1_simulacion.png" width="600" >\
Según se observa, la entrada de este bloque esta dado por un reloj de 100MHz, el cual, se genera en el testbench. Obteniendo un nuevo reloj de 10MHz y una señal `locked_o`.

##### 5. Testbench
El testbench de la FSM está en `tb_simulate.sv`. En este testbench se genera una instancia del módulo `top_simulate` y se genera un reloj simulado de 100MHz que servirá de entrada para la instancia.
Así mismo, se genera un pulso cada 100ns el cual se muestra en la señal `Flanco`.

La prueba es auto-verificable e indica cuando el reloj de 10MHz no se esta generando de forma correcta. Esto se realiza comparando dicho reloj con el pulso generado en un intervalo de 10ns.

Las pruebas que se muestran a continuación corresponden a una simulacion post-sinstesis.

Inicialmente no se logra observar el reloj de 10MHz, dado que el PLL aun no se ha estabilizado, esto se puede verificar mediante la salida `locked`, el cual, se mantiene en `0`, indicativo de que bloque `WCLK`
se encuentra inestable.

<img src="https://github.com/TDD-II-22/lab02-g03/blob/main/Images/simulacion_ejerc1_1.png" width="800" >\

Pasado un determinado periodo de tiempo la salida `locked` se dispara a `1`, denotando que el bloque `WCLK` se ha estabilizado completamente y ahora es posible observar la salida del reloj de 10MHz.
Cada pulso de la señal Flag_check se realiza una verificación entre el reloj de 10MHz y el flanco.

<img src="https://github.com/TDD-II-22/lab02-g03/blob/main/Images/simulacion_ejerc1_2.png" width="800" >\

<!--FINAL DEL EJERCICIO-->



### 3.2 Ejercicio 4.Decodificador hex-to-7-segments

#### 3.2.1 module_pseudo_random
El módulo module_pseudo_random genera números pseudo-aleatorios de `32 bits`. 

##### 1. Encabezado del módulo

```SystemVerilog

module module_pseudo_random #(parameter NUM_BITS = 32)( 

    input logic i_Clk,
    input logic i_Rst,
    input logic i_Enable,
 
    output logic [NUM_BITS-1:0] o_LFSR_Data
    
    );
	
```

##### 2. Parámetros
- `NUM_BITS`: define la cantidad de bits que va a tener el número pseudo-aleatorio.

##### 3. Entradas y salidas:
- `i_Clk`: Entrada de reloj del módulo.
- `i_Rst`: Entrada del módulo. Reinicia el sistema cuando esta `1`.
- `i_Enable`: Entrada del módulo. Recibe una señal habilitadora con un periodo determinado.
- `o_LFSR_Data`: Salida del módulo. Envia el dato de `32 bits` pseudo-aleatorio.

##### 5. Testbench
No se ha diseñado un testbench para este bloque.


#### 3.1.2 module_register_pp
El módulo module_register_pp es un registro de `32 bits` con WE.

##### 1. Encabezado del módulo

```SystemVerilog

module module_register_pp(
    input   logic               clk_i,
    input   logic               rst_i,
    input   logic               control,
    input   logic    [31 : 0]   entrada_i,
    output  logic    [31 : 0]   salida_o    
    );
	
```

##### 2. Parámetros
Este módulo no posee parámetros.

##### 3. Entradas y salidas:
- `clk_i`: Entrada de reloj del módulo.
- `rst_i`: Entrada del módulo. Reinicia el sistema cuando esta `1`.
- `control`: Entrada del módulo. Recibe una señal habilitadora para activa o desactivar el WE.
- `entrada_i`: Entrada del módulo. Obtiene el dato de `32 bits` pseudo-aleatorio.
- `salida_o`: Salida del módulo. Envia el dato de `32 bits` pseudo-aleatorio.

##### 5. Testbench
No se ha diseñado un testbench para este bloque.

<!--FINAL DEL MODULO-->



#### 3.1.3 top_module_7seg_v2 
Es el módulo TOP del sistema. Se hace instancia a los modulos WCLK, module_clock_catodo, module_pseudo_random, module_register_pp, module_seg7_control.

##### 1. Encabezado del módulo
```SystemVerilog

module top_module_7seg_v2(

    input   logic               clk_100Mhz_pi,
                                reset_pi,
                                control_pi,
    output  logic   [6 : 0]     display_po,
                    [7 : 0]     display_select_po
    );

```
##### 2. Parámetros
Este módulo no posee parámetros.

##### 3. Entradas y salidas:
- `clk_100Mhz_pi`: Entrada de reloj de la FPGA al módulo.
- `reset_pi`: Entrada del módulo. Presenta un pulso para reiniciar el módulo.
- `control_pi`: Entrada del módulo. Recibe una señal habilitadora para activa o desactivar el WE del registro.
- `display_po`: Salida del módulo. Envia el dato de `7 bits` que se va a enviar al cátodo de los display de la FPGA.
- `display_select_po`: Entrada del módulo. Envia el dato de `8 bits` que se va a enviar al ánodo de los display de la FPGA.

##### 4. Criterios de diseño
 a.El módulo se basa en el siguiente diagrama de bloques.
<img src="https://github.com/TDD-II-22/lab02-g03/blob/main/Images/lab2TD_ejec4.png" width="600" >\
Según se observa, la entrada de este bloque esta dado por un reloj de 100MHz, un botón y un switch, todos pertenecientes a la FPGA. La señal generada por el reloj pasa por un bloque PLL. 
Una vez se genera una nueva señal reloj de 10Mhz esta es utilizada por el resto de bloques. El modulo clock_catodo genera por medio del reloj anterior un pulso en un periodo determinado, este pulso es recibido 
por el modulo module_pseudo_random, el cual, genera un numero pseudo-aleatorio que va cambiando cada impulso recibido. 
Este numero pseudo-aleatorio es enviado al bloque module_seg7_control, el cual, procesa dicha información para ser mostrada en los display de 7 segmentos de la FPGA mediante una frecuencia determinada.
El boton se encarga de reiniciar el sistema e inicializar el contador en 0 y el switch se habilita o deshabilitar el WE del registro.

b. Se definió los parámetros `COUNT_CATODO`, `BITS_CATODO`, `COUNT_ANODO` y `BITS_ANODO` para permitir que el sistema pueda adaptarse a distintas frecuencias segun sea requerido.
Los valores de estos parámetros son: `20_000_000`, `25`, `10_000` y `14` respectivamente.  Dado que se va desea trabajar a una frecuencia de 0.5Hz para los cambios del cátodo y 1KHz para el refrescamiento del ánodo.

##### 5. Testbench
No se ha diseñado un testbench para este bloque.

##### 6. Constraints

Los pines asignados son:

| Señal         		| Pin   | En tarjeta    |
| ----------------------|:-----:| -------------:|
| clk_100Mhz_pi        	| E3    | CLK100MHZ     |
| reset_pi        		| E16   | BTNC          |
| control_pi      		| U9    | SW0           |
| display_po[0]     	| L3	| CA            |
| display_po[1]     	| N1	| CB            |
| display_po[2]     	| L5	| CC            |
| display_po[3]     	| L4	| CD            |
| display_po[4]     	| K3	| CE            |
| display_po[5]     	| M2	| CF            |
| display_po[6]     	| L6	| CG            |
| display_select_po[0]  | N6	| AN0           |
| display_select_po[1]  | M6	| AN1           |
| display_select_po[2]  | M3	| AN2           |
| display_select_po[3]  | N5	| AN3           |
| display_select_po[4]  | N2	| AN4           |
| display_select_po[5]  | N4	| AN5           |
| display_select_po[6]  | L1	| AN6           |
| display_select_po[7]  | M1	| AN7           |

Se definieron las siguientes constraints:


```sdc

set_property PACKAGE_PIN E3 [get_ports clk_100Mhz_pi]
    set_property IOSTANDARD LVCMOS33 [get_ports clk_100Mhz_pi]
    create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_100Mhz_pi]

set_property PACKAGE_PIN E16 [get_ports reset_pi]
	set_property IOSTANDARD LVCMOS33 [get_ports reset_pi]
	
set_property PACKAGE_PIN U9 [get_ports control_pi]
set_property IOSTANDARD LVCMOS33 [get_ports control_pi]
	
set_property PACKAGE_PIN L3 [get_ports {display_po[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[0]}]
	
set_property PACKAGE_PIN N1 [get_ports {display_po[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[1]}]	
	
set_property PACKAGE_PIN L5 [get_ports {display_po[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[2]}]	
	
set_property PACKAGE_PIN L4 [get_ports {display_po[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[3]}]

set_property PACKAGE_PIN K3 [get_ports {display_po[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[4]}]

set_property PACKAGE_PIN M2 [get_ports {display_po[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[5]}]

set_property PACKAGE_PIN L6 [get_ports {display_po[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_po[6]}]

set_property PACKAGE_PIN N6 [get_ports {display_select_po[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[0]}]

set_property PACKAGE_PIN M6 [get_ports {display_select_po[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[1]}]

set_property PACKAGE_PIN M3 [get_ports {display_select_po[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[2]}]

set_property PACKAGE_PIN N5 [get_ports {display_select_po[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[3]}]
	
set_property PACKAGE_PIN N2 [get_ports {display_select_po[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[4]}]	
	
set_property PACKAGE_PIN N4 [get_ports {display_select_po[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[5]}]	
	
set_property PACKAGE_PIN L1 [get_ports {display_select_po[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[6]}]	
	
set_property PACKAGE_PIN M1 [get_ports {display_select_po[7]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[7]}]
	
````

#### 3.2.4 top_simulate_7seg_v2 
Es el módulo TOP del sistema utilizado para simulación. Se hace instancia a los módulos WCLK, module_register_pp y module_seg7_control.

##### 1. Encabezado del módulo
```SystemVerilog

module top_simulate_7seg_v2(

    input   logic               clk_100Mhz_pi,
                                reset_pi,
                                control_reg,
                    [31 : 0]    display,
    output  logic   [6 : 0]     display_po,
                    [7 : 0]     display_select_po,
    output  logic               locked,
                                clk_10Mhz                
    );
Salida del módulo. Envia el dato de `7 bits` que se va a enviar al cátodo de los display de la FPGA.
- `display_select_po`: Entrada del módulo. Envia el dato de `8 bits` que se va a enviar al ánodo de los display de la FPGA.
```
##### 2. Parámetros
Este módulo no posee parámetros.

##### 3. Entradas y salidas:
- `clk_100Mhz_pi`: Entrada de reloj de la FPGA al módulo.
- `reset_pi`: Entrada del módulo. Presenta un pulso para reiniciar el módulo.
- `control_reg`: Entrada del módulo. Recibe una señal habilitadora para activa o desactivar el WE.
- `display`: Entrada del módulo. Recibe un dato de `32 bits` aleatorio
- `display_po`: Salida del módulo. Envia el dato de `7 bits` que corresponde a los datos que serian enviados al cátodo.
- `display_select_po`: Salida del módulo. Envia el dato de `8 bits` que corresponde a los datos que serian enviados al ánodo.
- `locked_o`: Salida del módulo. Envia un `1` al testbench una vez estabilizado el PLL.
- `clk_10Mhz`: Salida del módulo. Envia el reloj generado por el PLL al Testbench.

##### 4. Criterios de diseño
 a. El módulo se basa en el siguiente diagrama de bloques.
<img src="https://github.com/TDD-II-22/lab02-g03/blob/main/Images/lab2TD_ejec4_simula.png" width="600" >\
Según se observa, la entrada de este bloque esta dado por un reloj de 100MHz y un dato de `32 bits`, el cual, se genera en el testbench. Obteniendo un nuevo reloj de 10MHz,  una señal `locked_o` y los datos necesarios para
mostrar en un display.

##### 5. Testbench
El testbench de la FSM está en `tb_7seg_v2.sv`. En este testbench se genera una instancia del módulo `top_simulate_7seg_v2` y se genera un reloj simulado de 100MHz que servirá de entrada para la instancia.
Así mismo, se genera un numero aleatorio cada `10_000ns` haciendo uso de `$random`.

La prueba es auto-verificable e indica cuando la salida tanto del cátodo, como del ánodo se encuentran generando incorrectamente, ya sea por una falla del PLL o de un modulo en sí.

Las pruebas que se muestran a continuación corresponden a una simulacion post-sinstesis.

Inicialmente no se logra observar datos, dado que el PLL aun no se ha estabilizado, esto se puede verificar mediante la salida `locked`, el cual, se mantiene en `0`, indicativo de que bloque `WCLK`
se encuentra inestable.

<img src="https://github.com/TDD-II-22/lab02-g03/blob/main/Images/simulacion_ejerc4_1.png" width="800" >\

Pasado un determinado periodo de tiempo la salida `locked` se dispara a `1`, denotando que el bloque `WCLK` se ha estabilizado completamente y ahora es las respectivas salidas.
Cada pulso de la señal Flanco se realiza una verificación entre el display_o (salida de la instancia) y display_ver (dato creado en testbench) y entre display_select_o (salida de la instancia) y 
display_select_ver (dato creado en testbench).

<img src="https://github.com/TDD-II-22/lab02-g03/blob/main/Images/simulacion_ejerc4_2.png" width="800" >\

A un nivel más macro, se puede observar la señal control_reg la cual habilita o deshabilitar el WE del registro y se puede observar como mantiene el dato almacenado hasta que de deshabilita. 
También se aprecia el tiempo en que dura el número aleatorio en cambiar, así como, la tasa de refrescamiento del ánodo.

<img src="https://github.com/TDD-II-22/lab02-g03/blob/main/Images/simulacion_ejerc4_3.png" width="800" >\


<!--FINAL DEL EJERCICIO-->



### 4.6 Ejercicio 6. Banco de registros
#### Constantes

- `bits_t`: Es una varible lógica parametrizada de tamaño BITS_WIDTH.
- `bitsw_t`: Es una varible lógica parametrizada de tamaño BITS_WIDTH+1.
- `bitsh_t`: Es una varible lógica parametrizada de tamaño BITS_WIDTH+1.
- `matriz_2alaN_x_W_t`: Es una varible lógica parametrizada de tamaño 2**(BITS_HEIGHT)xBITS_WIDTH.\
#### 4.6.1 top_module_memoria
Este modulo se encarga de llamar a los modulos de la memoria y del clock wizard para guardar en la memoria dependiendo de si el W/E se encuentre activo, si no, puede funcionara en modo lectura en donde se ven los valores almacenados en la memoria.


##### 1. Encabezado del módulo
```SystemVerilog
module top_module_memoria(
                        input                           clk_pi,
                        input                           rst_pi,
                        input                            we_pi,
                        input  pkg_bits:: bitsh_t  addr_rs1_pi,
                        input  pkg_bits:: bitsh_t  addr_rs2_pi,
                        input  pkg_bits:: bitsh_t   addr_rd_pi,
                        input  pkg_bits:: bits_t    data_in_pi,
                        output pkg_bits:: bits_t        rs1_po,
                        output pkg_bits:: bits_t        rs2_po
                         );
```


##### 2. Parámetros
-`BITS_WIDTH`: Es una constante númerica que almacena un número entero que representa el número de bits deseados.\
-`BITS_HEIGHT`: Es una constante númerica que almacena un número entero que si se eleva 2 a la este número representa la cantidad de filas en la matriz de memoria.
##### 3. Entradas y salidas
- `clk_pi`: Entrada de reloj a 100MHz.
- `rst_pi`: Entrada de 1 bit para el reset en bajo.
- `we_pi`: Entrada de 1 bit que determina si se puede escribir en memoria o no.
- `addr_rs1_pi`: Entrada de bits dependiendo del parametro que se encarga de apuntar hacia una de las filas en la matriz de memoria.
- `addr_rs2_pi`: Entrada de bits dependiendo del parametro que se encarga de apuntar hacia una de las filas en la matriz de memoria.
- `addr_rd_pi`: Entrada de bits dependiendo del parametro que se encarga de apuntar hacia una la fila que se va a escribir en la matriz de memoria.
- `data_in_pi`: Entrada de bits dependiendo del parametro que indica el valor que se guardará en memoria.
- `rs1_po`: Salida de bits dependiendo del parametro que se encarga de sacar el valor en memoria del espacio que apuntaba addr_rs1_pi.
- `rs2_po`: Salida de bits dependiendo del parametro que se encarga de sacar el valor en memoria del espacio que apuntaba addr_rs2_pi.

##### 4. Criterios de diseño
Se seleccionó una lógica secuencial para la resolución del ejercicio.

##### 5. Testbench
El testbench que corresponde a este archivo tb_memoria.sv, ademas en la primera imagen se ve la simulación de comportamiento y en la segunda la post síntesis en donde se observan a detalle los retardos entre los relojes y en el momento que se dan los cambios en memoria.\
<img src="https://github.com/TDD-II-22/lab02-g03/blob/main/Images/simulacion_normal.png" width="600" >\
<img src="https://github.com/TDD-II-22/lab02-g03/blob/main/Images/simulacion_post_sintesis.png" width="600" >\
#### 4.6.2 module_memoria
Este modulo se encarga de guardar en la memoria dependiendo de si el W/E se encuentre activo, si no, puede funcionara en modo lectura en donde se ven los valores almacenados en la memoria.
##### 1. Encabezado del módulo
```SystemVerilog
module module_memoria(
                        input                           clk_i,
                        input                           rst_i,
                        input                            we_i,
                        input  pkg_bits:: bitsh_t  addr_rs1_i,
                        input  pkg_bits:: bitsh_t  addr_rs2_i,
                        input  pkg_bits:: bitsh_t   addr_rd_i,
                        input  pkg_bits:: bits_t    data_in_i,
                        output pkg_bits:: bits_t        rs1_o,
                        output pkg_bits:: bits_t        rs2_o
                     );
```
##### 2. Parámetros
-`BITS_WIDTH`: Es una constante númerica que almacena un número entero que representa el número de bits deseados.\
-`BITS_HEIGHT`: Es una constante númerica que almacena un número entero que si se eleva 2 a la este número representa la cantidad de filas en la matriz de memoria.

##### 3. Entradas y salidas
- `clk_i`: Entrada de reloj a 10MHz.
- `rst_i`: Entrada de 1 bit para el reset en bajo.
- `we_i`: Entrada de 1 bit que determina si se puede escribir en memoria o no.
- `addr_rs1_i`: Entrada de bits dependiendo del parametro que se encarga de apuntar hacia una de las filas en la matriz de memoria.
- `addr_rs2_i`: Entrada de bits dependiendo del parametro que se encarga de apuntar hacia una de las filas en la matriz de memoria.
- `addr_rd_i`: Entrada de bits dependiendo del parametro que se encarga de apuntar hacia una la fila que se va a escribir en la matriz de memoria.
- `data_in_i`: Entrada de bits dependiendo del parametro que indica el valor que se guardará en memoria.
- `rs1_o`: Salida de bits dependiendo del parametro que se encarga de sacar el valor en memoria del espacio que apuntaba addr_rs1_pi.
- `rs2_o`: Salida de bits dependiendo del parametro que se encarga de sacar el valor en memoria del espacio que apuntaba addr_rs2_pi.


##### 4. Criterios de diseño
Se seleccionó una lógica secuencial para la resolución del ejercicio.


##### 5. Testbench
El testbench que corresponde a este archivo tb_memoria.sv

#### 4.6.3 WCLK
Este modulo se encarga de generar un reloj de 10MHz a partir de un reloj de 100MHz.
##### 1. Encabezado del módulo
```SystemVerilog
module WCLK
 (
  // Clock out ports
  output        CLK_10MHZ,
  // Status and control signals
  output        locked,
 // Clock in ports
  input         CLK_100MHZ
 );
```

##### 2. Parámetros
No posee parámetros.
##### 3. Entradas y salidas
- `CLK_100MHZ`:Entrada de reloj a 100MHz.
- `CLK_10MHZ`:Salida de reloj a 10MHz.
- `locked`: Salida de 1 bit que indica cuando el reloj se estabilizó.


##### 4. Criterios de diseño
Se seleccionó una lógica secuencial para la resolución del ejercicio.


##### 5. Testbench
Su funcionamiento se comprueba en el testbench tb_memoria.sv, revisar imágenes del comportamiento en post síntesis específicamente mostradas en el top_module_memoria.

## Apendices:
### Apendice 1:
texto, imágen, etc
