import ctypes

lib = ctypes.CDLL('./liblogo.dylib')
lib.logo_black.restype = ctypes.c_char_p
result = lib.logo_black()
print(result.decode('utf-8'))
lib.logo.restype = ctypes.c_char_p
result = lib.logo()
print(result.decode('utf-8'))
