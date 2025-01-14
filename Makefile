build: ve libplay.dylib

libplay.dylib: play.zig
	ve/bin/python -m ziglang build-lib play.zig -dynamic

ve:
	python -m venv ve
	ve/bin/pip install ziglang

clean:
	rm -rf ve
	rm libplay.dylib
	rm -rf zig-cache

run:
	ve/bin/python play.py
