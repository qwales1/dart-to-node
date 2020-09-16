import 'package:dart_to_node/two_nums.dart';
import 'package:js/js.dart';
import 'package:node_interop/node.dart';

TwoNums createInstance(int a, int b) {
  return TwoNums(a, b);
}

void main() {
  // Note that functions must be wrapped with `allowInterop`.
  setExport('maths', allowInterop(createInstance));
}
