# Nombre del proyecto

## 1. Abreviaturas y definiciones
- **FPGA**: Field Programmable Gate Arrays

## 2. Referencias
[0] David Harris y Sarah Harris. *Digital Design and Computer Architecture. RISC-V Edition.* Morgan Kaufmann, 2022. ISBN: 978-0-12-820064-3

## 3. Desarrollo


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
