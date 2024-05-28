# build_run_ftracetest

This is a shell script to build kernel and run ftracetest on MINCS's
ermine virtual-machine container.

Prerequisites
-------------
You have to install qemu-system-* (arm, aarch64, riscv, x86), llvm, gcc and some packages for building kernel package.
```
sudo apt install qemu-system llvm lld
sudo apt builddep linux
```

Install and setup
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
git clone git://git.kernel.org/pub/scm/linux/kernel/git/trace/linux-trace.git linux
cd linux
git checkout -b probes/for-next
```

And prepare to run the test. We need to link the linux kernel image under MINCS's working directory.
This and config file's `LINUX_URL` will prevent ermine-breeder to download linux kernel, and use the linux source code which is linked from the working directory.

```
cd $TOPDIR
cd build_run_ftracetest
mkdir -p mincs/work/linux
ln -s $TOPDIR/linux mincs/work/linux/linux
```

Run test
--------

```
./test_ftrace
```

TODO
----
- Validate the test result and stop if it found something wrong.
- Stop when the VM does not respond. (e.g. kernel panic timeout)
- Expand the supported architecture.
- Support bootconfig tests
