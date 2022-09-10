`timescale 1ns / 1ps

package pkg_bits;
    parameter int   BITS_WIDTH                                 =                      16;
    parameter int   BITS_HEIGHT                                =                      5;
    typedef logic [ BITS_WIDTH       - 1 : 0]                                    bits_t;
    typedef logic [ BITS_WIDTH           : 0]                                   bitsw_t;
    typedef logic [ BITS_HEIGHT      - 1 : 0]                                   bitsh_t;
    typedef logic [ 2**(BITS_HEIGHT) - 1 : 0] [ BITS_WIDTH - 1 : 0]  matriz_2alaN_x_W_t;
endpackage
