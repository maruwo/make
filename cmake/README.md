Normal comiplation:

```terminal
mkdir build
cd build
cmake ..
make
```

Add `-DCMAKE_BUILD_TYPE=Debug` to `cmake` command to compile in debug mode (`-g` option is added):

```terminal
cmake .. -DCMAKE_BUILD_TYPE=Debug
```
