import 'package:flutter/material.dart';
import 'package:testflutter/views/dashbaord/secondscreen.dart';

import 'first_screen.dart';


class dashboard extends StatelessWidget {
  final id;
  final name;
  final username;
  final address;
  final zipcode;
  const dashboard({Key? key, this.id, this.name, this.username, this.address, this.zipcode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
           backgroundColor: Colors.red,
          title: Text('Lorem Ipsum'),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(  text: "All Post"),
              Tab( text: "Profile"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
             secondscreen(
              username: username,
              name: name,
              address: address,
             zipcode: zipcode,
            ),
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}
