# Word Counter with flex
 
This is a simple example to count the words and numbers from a text using flex.

## Build (on macOS)

```bash
# Generate the C code from flex file
flex word-counter.l

# Set up C++ standard library and header path for clang
export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)

# Build with clang
clang lex.yy.c -o word-counter

# Or, build with gcc
gcc lex.yy.c -o word-counter
```

# Run

```bash
# Use Ctrl+D to stop input
./word-counter
```

Output:

```
> Abc 123 xY 04 
> y 345
> (Ctrl+D)
> words: 3, numbers: 3
```
