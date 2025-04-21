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

If you run it again, everything will be up-to-date, so nothing will be rebuilt:

```shell
% make run
ve/bin/python play.py
1 + 2 = 3
```

You can activate the virtual environment and run the Python directly if you want.

```shell
% source ve/bin/activate
```

```shell
python play.py
1 + 2 = 3
```
