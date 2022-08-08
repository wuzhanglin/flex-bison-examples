# Flex Hello World
 
This is a Hello World using flex. It prints "Hello World" when see the word "World".

## Build (on macOS)

```bash
# Generate the C code from flex file
flex hello-world.l

# Set up C++ standard library and header path for clang
export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)

# Build
clang lex.yy.c -o hello-world
```

# Run

```bash
./hello-world

> abc
> abc
> 
> World
> Hello World
> 
> 123
> 123
```
