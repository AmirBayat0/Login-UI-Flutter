import 'package:get/get.dart';
//
import '../controller/submit.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SubmitController());
  }
}
