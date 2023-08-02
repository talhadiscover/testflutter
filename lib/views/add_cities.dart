import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:testflutter/views/show_cities.dart';

import '../controllers/add_cities_controller.dart';
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   TextEditingController deviceid = TextEditingController();
//   TextEditingController token = TextEditingController();
//   TextEditingController langid = TextEditingController();
//   addcitiesss registrationController = Get.put(addcitiesss());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:       Padding(
//           padding: const EdgeInsets.all(10),
//           child: ListView(
//             children: <Widget>[
//               Container(
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.all(10),
//                   child: const Text(
//                     'FLutter test',
//                     style: TextStyle(
//                         color: Colors.blue,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 30),
//                   )),
//
//               Container(
//                 padding: const EdgeInsets.all(10),
//                 child: TextField(
//                   controller: deviceid,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'device id',
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//                 child: TextField(
//                   obscureText: true,
//                   controller: langid,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'langid',
//                   ),
//                 ),
//               ),
//               SizedBox(
//                  height: 20,
//               ),   Container(
//                 padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//                 child: TextField(
//                   obscureText: true,
//                   controller: token,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'token',
//                   ),
//                 ),
//               ),
//               SizedBox(
//                  height: 20,
//               ),
//                Obx(()=>ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                        shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10 )
//                       )
//                   ),
//                   onPressed: () async {
//                        await registrationController.add_cities(deviceid.text, langid.text, token.text);
//                       print('message ${registrationController.starttripmsg.value.msg}');
//                       if(registrationController.starttripmsg.value.msg!.isNotEmpty){
//                         print(registrationController.starttripmsg.value.msg);
//                         Get.snackbar('${registrationController.starttripmsg.value.msg}','Sucess');
//                            Get.offAll(show_citiesw(token:registrationController.starttripmsg.value.data, ) );
//                       }else{
//                         Get.snackbar('Failed', 'Email or password wrong' );
//                       }
//                    },
//                   child:!registrationController.isLoading.value ? Text(  'add' ):
//                   const Center(
//                     child:  CircularProgressIndicator()
//                   )
//               )
//               ),
//              ],
//           )),
//
//     );
//   }
// }