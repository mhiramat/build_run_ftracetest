# build_run_ftracetest

This is a shell script to build kernel and run ftracetest on MINCS's
ermine virtual-machine container.

Prerequisites
-------------
You have to install qemu-system-* (arm, aarch64, riscv, x86) and clang.

Install
-------
Clone this repository and init submodules.

```
cd $TOPDIR
git clone https://github.com/mhiramat/build_run_ftracetest.git
cd build_run_ftracetest/
git submodule init
git submodule update
```

Also, checkout the target kernel.

```
cd $TOPDIR
git clone git://git.kernel.org/pub/scm/linux/kernel/git/trace/linux-trace.git
cd linux-trace
git checkout -b probes/for-next
```

And prepare to run the test.

```
cd $TOPDIR
cd build_run_ftracetest
mkdir -p mincs/work/linux
ln -s $TOPDIR/linux-trace mincs/work/linux/linux
```

Then, run the test.

```
./test_ftrace
```
