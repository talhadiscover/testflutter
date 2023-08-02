import 'package:get/state_manager.dart';
import 'package:testflutter/services/api.dart';

import '../model/reponse/fetchproduct.dart';

// class ProductController extends GetxController {
//   var isLoading = true.obs;
//   var productList = <Product>[].obs;
//
//   @override
//   void onInit() {
//     fetchProducts();
//     super.onInit();
//   }
//
//   void fetchProducts() async {
//     try {
//       isLoading(true);
//       var products = await API().fetchProducts();
//       if (products != null) {
//         productList.value = products;
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }
