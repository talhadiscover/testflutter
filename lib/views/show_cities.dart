import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controllers/show_cities_controller.dart';

class show_citiesw extends StatelessWidget {
  final token;

  show_citiesw({Key? key, this.token}) : super(key: key);
  TextEditingController deviceid = TextEditingController();
  TextEditingController langid = TextEditingController();
  showcitiescontroller registrationController = Get.put(showcitiescontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'FLutter test',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: deviceid,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'country id',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(() => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () async {
                    await registrationController.showcities('deviceid.text',
                        'langid.text', '${token}', deviceid.text);
                    print(
                        'message ${registrationController.starttripmsg.value.msg}');
                    if (registrationController
                        .starttripmsg.value.msg!.isNotEmpty) {
                      print(registrationController.starttripmsg.value.msg);
                      Get.snackbar(
                          '${registrationController.starttripmsg.value.msg}',
                          'Sucess');
                      // Get.offAll(DashboardPage(name:'john' ,email:emailController.text ,userid: userid,) );
                    } else {
                      Get.snackbar('Failed', 'Email or password wrong');
                    }
                  },
                  child: !registrationController.isLoading.value
                      ? Text('search')
                      : const Center(child: CircularProgressIndicator()))),
              Obx(
                () => Container(
                  height: 500,
                  child: registrationController.starttripmsg.value.data == null
                      ? Center(child: Text('No data found'))
                      : ListView.builder(
                          itemCount: registrationController
                              .starttripmsg.value.data!.length,
                          itemBuilder: (ctx, i) {
                            return ListTile(
                              title: Text(
                                  '${registrationController.starttripmsg.value.data![i].name}'),
                              leading: Text(
                                  '${registrationController.starttripmsg.value.data![i].id}'),
                              subtitle: Text(
                                  '${registrationController.starttripmsg.value.data![i].stateId}'),
                            );
                          }),
                ),
              )
            ],
          )),
    );
  }
}
