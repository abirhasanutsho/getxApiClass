import 'package:apiclass/screen/product_page/product_controller.dart';
import 'package:get/get.dart';

class AllBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => ProductController());

  }

}