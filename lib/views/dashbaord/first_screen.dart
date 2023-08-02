import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/fetchdata_controller.dart';
import '../../controllers/login_controller.dart';

// class firstscreen extends StatefulWidget {
//   final id;
//
//   const firstscreen({Key? key, this.id}) : super(key: key);
//
//   @override
//   State<firstscreen> createState() => _firstscreenState();
// }
//
// class _firstscreenState extends State<firstscreen> {
//   final ProductController productController = Get.put(ProductController());
//   // logincontroller controller = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     // print(controller.detailss.email);
//     return Scaffold(
//       body: Obx(() => !productController.isLoading.value
//           ? ListView.builder(
//               itemCount: productController.productList.length,
//               itemBuilder: (ctx, i) {
//                 return Column(
//                   children: [
//                     Container(
//                       child: ListTile(
//                         title: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             '${productController.productList[i].title}',
//                             style: TextStyle( color: widget.id ==productController.productList[i].userId  ?Colors.red: Colors.black),
//                           ),
//                         ),
//                         subtitle: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child:
//                               Text('${productController.productList[i].body}',style: TextStyle(
//                                 fontWeight:  widget.id ==
//                                     productController.productList[i].userId
//                                     ?FontWeight.bold:FontWeight.normal,
//                               ),
//
//                               ),
//                         ),
//                       ),
//                     ),
//                     Divider(),
//                   ],
//                 );
//               })
//           : Center(child: CircularProgressIndicator())),
//     );
//   }
// }
