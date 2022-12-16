import 'package:flutter/material.dart';



class secondscreen extends StatelessWidget {
  final name;
  final username;
  final address;
  final zipcode;
  const secondscreen({Key? key, this.name, this.username, this.address, this.zipcode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('name'),
                Text('$name'),

              ],

            ),
            SizedBox(height: 5,),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('username'),
                Text('$username'),

              ],

            ),
            SizedBox(height: 5,),

            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('address'),
                Text('$address'),

              ],

            ),
            SizedBox(height: 5,),

            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('zipcode'),
                Text('$zipcode'),

              ],

            ),
            SizedBox(height: 5,),

            Divider(),
          ],
        ),
      ),
    );
  }
}
