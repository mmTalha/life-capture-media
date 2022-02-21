import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Shipping_Address_Screens/Select_Shipping_Address.dart';
import 'package:untitled/Shipping_Address_Screens/Select_new_Address.dart';
import 'package:untitled/cart/Checkout_screen.dart';
import 'package:untitled/login/Dashboard_screens/Drawer.dart';
import 'package:untitled/login/shippingadree.dart';
import 'package:untitled/provider/widgets.dart';

class cart_Screen extends StatelessWidget {
  const cart_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.black,
      appBar: AppBar(
        leadingWidth: 100,
        leading: widget().appbar(),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Your cart',
          style: TextStyle(
              color: widget().colorheading,
              fontSize: widget().headingsize,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cart_Screen()),
              );
            },
            icon: Icon(CupertinoIcons.cart_fill),
            color: Colors.black,
          )
        ],
      ),
      // body: Container(
      //
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //
      //     children: [
      //
      //               SizedBox(height: 450,),
      //               Center(
      //                 child: Container(
      //                   child: Column(
      //                     children: [
      //                       Text('No history found',style: TextStyle(color: Colors.grey,fontSize: 20),),
      //                       Text('Select "Create new disk" to begin',style: TextStyle(color: Colors.grey),)
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(height: 30,),
      //               Center(
      //                 child: Container(
      //                   height:60,
      //                   width: 190,
      //                   child: MaterialButton(
      //                     shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(10)),
      //                     color: Color.fromRGBO(22, 97, 207, 10),
      //                     child: Text(
      //                       'CREATE NEW DISK',
      //                       style: TextStyle(
      //                         fontFamily: 'Roboto',
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => Shipping_address()),
      //                       );
      //                     },
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           )
      //       ),
      drawer: drawer_Screen(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 40,
                width: 300,
                decoration: new BoxDecoration(
                    border: Border.all(color: Colors.black),
                    // color: Color.fromRGBO(245, 245, 245, 5),
                    // color: Color.fromRGBO(223, 248, 255,1),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Test disc 01',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Text(
                          'Edit',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Remove',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            new Center(
                child: new Container(
                  margin: EdgeInsets.only(top: 10),
                   padding: EdgeInsets.only(left: 10,right: 15,top: 10),
                   height: 140,
                    width: 300,
                  decoration: new BoxDecoration(
                  border: Border.all(color: Colors.black),
                  // color: Color.fromRGBO(245, 245, 245, 5),
                  // color: Color.fromRGBO(223, 248, 255,1),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(' ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text('Qty',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 15,
                          ),
                          Text('Price',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Blu-ray',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text('1',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 15,
                          ),
                          Text('25.00',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('DVD',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text('2',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 15,
                          ),
                          Text('28.00',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shipping',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      Text('Free',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      Text('100.00',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            )),
            SizedBox(
              height: 10,
            ),
            // Center(
            //   child: Container(
            //     // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //     padding: EdgeInsets.only(left: 15, right: 15),
            //     height: 50,
            //     width: 300,
            //     decoration: new BoxDecoration(
            //         // color: Color.fromRGBO(245, 245, 245, 5),
            //         // color: Color.fromRGBO(223, 248, 255,1),
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(10)),
            //     child:
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Text(
            //           'Shipping address',
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 15,
            //               fontWeight: FontWeight.bold),
            //         ),
            //         // SizedBox(
            //         //   width: 50,
            //         // ),
            //         Row(
            //           children: [
            //             Text(
            //               'Edit',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(
            //               width: 5,
            //             ),
            //             Text(
            //               'Remove',
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold),
            //             )
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            new Center(
                child: new Container(
              height: 110,
              width: 310,
              decoration: new BoxDecoration(
                  border: Border.all(color: Colors.black),
                  // color: Color.fromRGBO(245, 245, 245, 5),
                  // color: Color.fromRGBO(223, 248, 255,1),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Shipping Address',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Text(
                              ' Edit',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Remove',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

                    // padding:
                    //     const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Bob k Pietro',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          '55 any street philipines',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          'Georgia - 856321',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //
                  //     child: Text(
                  //   'Product',
                  //   style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 15,
                  //       fontWeight: FontWeight.bold),
                  // )),
                ],
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(5),
                height: widget().height,
                width: widget().width,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromRGBO(22, 97, 207, 10),
                  child: Text(
                    'Create new disc',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: widget().fontsize),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => select_new_Address_screen()),
                    );
                  },
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(22, 97, 207, 10),
                  border: Border.all(
                    color: Color.fromRGBO(22, 97, 207, 10),
                  ),
                ),
                height: widget().height,
                width: widget().width,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontSize: widget().fontsize,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => Checkout_Screen()),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
