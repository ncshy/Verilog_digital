## Sum of Products with NAND in Verilog

Implements the boolean function: <br>
```
AB + CD
```
using universal **NAND** gates. <br>

### Schematic

![SOP Schematic only nand](sum_of_prod_only_nand.png)

### Expression Equivalence

```
((AB)' . (CD)')' = ((AB)')' + ((CD)')' = AB + CD
```


