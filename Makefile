.DEFAULT_GOAL := build

libplay.dylib: play.zig
	ve/bin/python -m ziglang build-lib play.zig -dynamic

ve:
	python -m venv ve
	ve/bin/pip install ziglang

.PHONY: build
build: ve libplay.dylib

.PHONY: run
run: build
	ve/bin/python play.py

.PHONY: clean
clean:
	rm -rf ve
	rm -f libplay.dylib
	rm -rf zig-cache
