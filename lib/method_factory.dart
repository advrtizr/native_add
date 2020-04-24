import 'dart:ffi';
import 'dart:io';

class MethodFactory {
  static final MethodFactory _factory = MethodFactory._internal();

  factory MethodFactory() {
    return _factory;
  }

  MethodFactory._internal();

  static final String libName = "libnative_add.so";

  static final DynamicLibrary nativeAddLib =
      Platform.isAndroid ? DynamicLibrary.open(libName) : DynamicLibrary.process();

  static Pointer<T> create<T extends NativeType>(String methodName) {
    Pointer<T> pointer = nativeAddLib.lookup<T>(methodName);
    return pointer;
  }
}
