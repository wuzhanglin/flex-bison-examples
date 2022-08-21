# Simple Calculator With Flex & Bison


## Build

```bash
flex -o simple-calculator.yy.c simple-calculator.l
bison -d -o simple-calculator.tab.c simple-calculator.y
gcc -o simple-calculator simple-calculator.tab.c simple-calculator.yy.c
```

## Test

```bash
./simple-calculator
```

Input:

```bash
-2 + 3 * 4
```

Output:

```bash
= 10
(Ctrl+D)
```
