// import 'package:apiclass/screen/product_page/product_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ProductPage extends GetView<ProductController> {
//   const ProductPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 10,
//         backgroundColor: Colors.indigo,
//         title: Text("Product Page"),
//       ),
//       body: Obx(() {
//         if (controller.loader.value) {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         } else {
//           return ListView.builder(
//             shrinkWrap: true,
//             primary: false,
//             itemCount: controller.productModel.value.hotsaleProducts!.length,
//             itemBuilder: (context, index) {
//               var data = controller.productModel.value.hotsaleProducts![index];
//               return ListTile(
//                 title: Text("${data.name}"),
//               );
//             },
//           );
//         }
//       }),
//     );
//   }
// }
import 'package:apiclass/screen/product_page/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.indigo,
        title: Text("Product Page"),
      ),
      body: Obx(() {
        if (productController.loader.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount:
                productController.productModel.value.hotsaleProducts!.length,
            itemBuilder: (context, index) {
              var data =
                  productController.productModel.value.hotsaleProducts![index];
              return ListTile(
                title: Text("${data.name}"),
              );
            },
          );
        }
      }),
    );
  }
}
