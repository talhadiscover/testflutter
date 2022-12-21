 import 'package:get/get.dart';
import '../model/loginmodel.dart';
import '../model/reponse/resplogin.dart';
import '../model/widget.dart';
 import '../services/api.dart';

class logincontroller extends GetxController{
   var isLoading = false.obs;
  final starttripmsg = RespLoginmodel(  ).obs;
  RxList popularProductList=[].obs;
  var productList = <RespLoginmodel>[].obs;
  late details detailss;
 @override
 void onReady(){
  detailss = Get.arguments as details;
  print('hhhhhhhhhhhhhhhhh${detailss.password}');
  super.onReady();
}
  hitlogin(name,username ) async {
    try {
      isLoading(true);
      Loginmodel model = Loginmodel(
         name: name,
        username: username,
      );
      var res = await API().login(model.name,model.username);
       productList.value = res;
      productList.refresh();
      }catch(e){
      print('error${e.toString()}');
    }
    finally{
      isLoading(false);
    }
  }

}
