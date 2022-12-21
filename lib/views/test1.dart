import 'package:flutter/material.dart';


class test1screen extends StatefulWidget {
  const test1screen({Key? key}) : super(key: key);

  @override
  State<test1screen> createState() => _test1screenState();
}

class _test1screenState extends State<test1screen> {
  bool isSwitched = false;
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
            bottom: BorderSide(
                color: Color(0xff21acff),
                width: 4
            )
        ),
        elevation: 4,
        centerTitle: true,
        title: Text('Pickup Date',style: TextStyle(color: Color(0xff21acff)),),
        shadowColor:Color(0xff21acff) ,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.list,color:Color(0xff21acff),),
          )
        ],
        leading: Icon(Icons.arrow_back,color: Color(0xff21acff),),
      ),
      body: Padding(
        padding:EdgeInsets.only(left: 15 ,right: 15 ),
        child: Column(
          children: [
              SizedBox(height: 20,),
            Padding(
              padding:EdgeInsets.only(left: 15 ,right: 15 ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
               Text(''),
                  Text('When would you like your pickup',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),),
                Icon(Icons.date_range_rounded,color:Color(0xff21acff) ,size: 25,)
                ],
              ),
            ),
            SizedBox(height: 25),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:   [
                Container(
                   decoration: BoxDecoration(
                     color: Colors.white,

                      borderRadius: BorderRadius.circular(10)
                   ),
                   height: 80,
                   width: 80,
                   child: Column(
                     children: [
                       Expanded(
                         child: Container(
                           decoration: BoxDecoration(
                             color: Colors.grey,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),

                             ),
                            child: Center(child: Text('Fri',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),)),
                         ),
                       ),
                       Container(
                         height: 40,
                          child: Center(child: Text('25 jan Yesterdaty',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400, ),textAlign: TextAlign.center,)),
                       )
                     ],
                   ),
                 ),
                SizedBox(width: 3),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 80,
                  width: 80,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),

                          ),
                          child: Center(child: Text('Fri',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),)),
                        ),
                      ),
                      Container(
                        height: 40,
                        child: Center(child: Text('25 jan today',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400, ),textAlign: TextAlign.center,)),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 3),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 80,
                  width: 80,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),

                          ),
                          child: Center(child: Text('Fri',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 20),)),
                        ),
                      ),
                      Container(
                        height: 40,
                        child: Center(child: Text('25 jan tomorrow',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400, ),textAlign: TextAlign.center,)),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 3),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 80,
                  width: 80,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),

                          ),
                          child: Center(child: Text('Fri',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),)),
                        ),
                      ),
                      Container(
                        height: 40,
                        child: Center(child: Text('25 jan tomorrow',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400, ),textAlign: TextAlign.center,)),
                      )
                    ],
                  ),
                ),



              ],
            ),
            SizedBox(height: 15,),
            Text('Available time slots ',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),),
            SizedBox(height: 15,),
Row(
  children: [
    Container(
      decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(10)
      ),
      height: 40,
      width: 120,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),

              ),
              child: Center(child: Text('7am-9pm',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400)),),
            ),
          ),

        ],
      ),
    ),
    SizedBox(width: 3),

    Container(
      decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(10)
      ),
      height: 40,
      width: 120,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),

              ),
              child: Center(child: Text('7am-9pm',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400)),),
            ),
          ),

        ],
      ),
    ),
    SizedBox(width: 3),

    Container(
      decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(10)
      ),
      height: 40,
      width: 80,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),

              ),
              child: Center(child: Text('7am-9pm',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400)),),
            ),
          ),

        ],
      ),
    ),

  ],
),
            SizedBox(height: 15,),

            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 40,
                  width: 120,
                  child: Column(
                    children: [
                      Expanded(
                        child:
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),
                           ),
                          child: Center(child: Text('7am-9pm',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400)),),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(width: 3),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 40,
                  width: 120,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),

                          ),
                          child: Center(child: Text('7am-9pm',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400)),),
                        ),
                      ),

                    ],
                  ),
                ),


              ],
            ),
            SizedBox(height: 15),

            Container(
              height: 40,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),
              ),
              child:  Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Repeat pickup',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400)),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 40,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10) ),
              ),
              child:Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Every week',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400)),
                    DropdownButton(
                        value: dropdownvalue,
                       underline: DropdownButtonHideUnderline(child: Text('')),
                        // Down Arrow Icon
                        icon:
                        Icon(Icons.arrow_drop_down),
                         // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(''),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                        ),
                  ],
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
