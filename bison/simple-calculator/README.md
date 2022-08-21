https://www.jianshu.com/p/8da9ed3d30a7


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

Output:

```bash
-2 + 3 * 4
= 10
(Ctrl+D)
```