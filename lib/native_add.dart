import 'dart:ffi'; // For FFI

import 'package:native_add/method_factory.dart'; // For Platform.isX

final int Function(int x) nativeDecrement =
    MethodFactory.create<NativeFunction<Int32 Function(Int32)>>("native_decrement").asFunction();

final int Function(int x) nativeIncrement =
    MethodFactory.create<NativeFunction<Int32 Function(Int32)>>("native_increment").asFunction();
