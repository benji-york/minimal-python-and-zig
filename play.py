import ctypes
play = ctypes.CDLL('libplay.dylib')
print(play.add(1, 2))
