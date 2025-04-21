To build and run this project, all you need is a recent Python and Make (which is
probaly included with your OS).

Zig is installed via the [ziglang package](https://pypi.org/project/ziglang/) so there's
nothing you need to do there.

Check out this repo and run `make run`.

```shell
% make run
python -m venv ve
ve/bin/pip install ziglang
Collecting ziglang
  Using cached ziglang-0.14.0-py3-none-macosx_12_0_x86_64.whl.metadata (2.7 kB)
Using cached ziglang-0.14.0-py3-none-macosx_12_0_x86_64.whl (86.6 MB)
Installing collected packages: ziglang
Successfully installed ziglang-0.14.0
ve/bin/python -m ziglang build-lib play.zig -dynamic
ve/bin/python play.py
1 + 2 = 3
```

The dependencies will be installed, the `play.zig` extention will be built and the
Python program that calls it will be run.
