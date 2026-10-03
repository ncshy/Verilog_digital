## 4B/5B encoder in Verilog

Implements the following truth table which is a 4bit/5bit(which is then expanded to 4byte/5byte) encoder used in Ethernet implementations: <br>
```
w  x  y  z  |  A  B  C  D  E
0  0  0  0     1  1  1  1  0
0  0  0  1     0  1  0  0  1
0  0  1  0     1  0  1  0  0
0  0  1  1     1  0  1  0  1
0  1  0  0     0  1  0  1  0
0  1  0  1     0  1  0  1  1
0  1  1  0     0  1  1  1  0
0  1  1  1     0  1  1  1  1
1  0  0  0     1  0  0  1  0
1  0  0  1     1  0  0  1  1
1  0  1  0     1  0  1  1  0
1  0  1  1     1  0  1  1  1
1  1  0  0     1  1  0  1  0
1  1  0  1     1  1  0  1  1
1  1  1  0     1  1  1  0  0
1  1  1  1     1  1  1  0  1
```
I am using **DataFlow modeling** to implement the HDL program. <br>

## Testbench

The testbench runs for 160 time units. <br>

The input is initialized to a 4 bit value of 4'b0000 initially. <br>

Every 10 time units, the input represented as a 4bit value M increments by 1. <br>

The input and output values are printed at each time unit. <br>

