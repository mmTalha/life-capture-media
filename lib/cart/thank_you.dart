import 'package:flutter/material.dart';
import 'package:untitled/cart/cart_Screen.dart';

class Thankyou_screen extends StatelessWidget {
  const Thankyou_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(child: Image.asset('images/aboutlogo.png',height:80,)),
            SizedBox(height: 30,),
            Center(
                child: Text(
              'Thank you for your order!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(height: 10,),
            Center(
                child: Text(
                  'Your confirmation number is',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                )),

            Center(
                child: Text(
                  'Lifecapture 93c34sdetgh',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                )),
            SizedBox(height: 10,),
            Center(
                child: Text(
                  'You will recieve a confirmation',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                )),
            Center(
                child: Text(
                  'Shortly via email.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                )),
            SizedBox(height: 25,),

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
                          '',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '',
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
                )

    );
  }
}
