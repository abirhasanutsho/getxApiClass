import 'package:apiclass/model/product_model.dart';
import 'package:apiclass/network/product_repository.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  RxBool loader = false.obs;
  var productModel = ProductModel().obs;
  ProductRepository productRepository = ProductRepository();

  getData() async {
    loader.value = true;
    var apiData = await productRepository.getProductData();
    productModel.value = apiData!;
    loader.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    getData();
  }
}
