"""Load and call some Zig code from Python."""
import ctypes
libplay = ctypes.CDLL('libplay.dylib')
print('1 + 2 =', libplay.add(1, 2))
