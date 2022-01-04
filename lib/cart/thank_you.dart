import 'package:flutter/material.dart';
import 'package:untitled/cart/cart_Screen.dart';

class Thankyou_screen extends StatelessWidget {
  const Thankyou_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Thank you for your order!',
            style: TextStyle(
                color: Color.fromRGBO(22, 97, 207, 10),
                fontSize: 18,
                fontWeight: FontWeight.w400),
          )),
          Center(
              child: Text(
                'Your confirmation Number is',
                style: TextStyle(
                    color: Color.fromRGBO(179,192,199, 10),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              )),
          SizedBox(height: 15,),
          Center(
              child: Text(
                'LifeCapture 93c34sdetgh',
                style: TextStyle(
                    color: Color.fromRGBO(22, 97, 207, 10),
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              )),
          Center(
              child: Text(
                'You Will recieve a Confirmation',
                style: TextStyle(
                    color: Color.fromRGBO(179,192,199, 10),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              )),
          Center(
              child: Text(
                'Shortly Via email.',
                style: TextStyle(
                    color: Color.fromRGBO(179,192,199, 10),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              )),
          SizedBox(height: 25,),
          Image.asset( 'images/thans.png',height: 100,),
          new Center(
              child: new Container(
                margin: EdgeInsets.only(top: 10),
                height: 340,
                width: 300,
                decoration: new BoxDecoration(
                    color: Color.fromRGBO( 245,245,245,5 ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Test Disc 01',
                                style: TextStyle(
                                    color:Colors.black ,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                          Divider(
                            thickness: 2.0,
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Product',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:20,
                            fontWeight: FontWeight. w400),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Column(
                        children: [

                          // Row(
                          //   children: [
                          //     Text(
                          //       'Test Disc 01',
                          //       style: TextStyle(
                          //           color: Colors.grey,
                          //           fontSize: 15,
                          //           fontWeight: FontWeight.bold),
                          //     ),
                          //     SizedBox(
                          //       width: 50,
                          //     ),
                          //     Text(
                          //       'Divsn Pixel Agency',
                          //       style: TextStyle(
                          //           color: Colors.black ,
                          //           fontSize: 15,
                          //           fontWeight: FontWeight. w400),
                          //     ),
                          //   ],
                          // ),
                          //
                          // Row(
                          //
                          //   children: [
                          //     Text(
                          //       'Format',
                          //       style: TextStyle(
                          //           color: Colors.grey,
                          //           fontSize: 15,
                          //           fontWeight: FontWeight.bold),
                          //     ),
                          //     SizedBox(
                          //       width:90,
                          //     ),
                          //     Text(
                          //       'DVD',
                          //       style: TextStyle(
                          //           color: Colors.black ,
                          //           fontSize: 15,
                          //           fontWeight: FontWeight. w400),
                          //     ),
                          //   ],
                          // ),
                          // Row(
                          //
                          //   children: [
                          //     Text(
                          //       'Number of Copies',
                          //       style: TextStyle(
                          //           color: Colors.grey,
                          //           fontSize: 15,
                          //           fontWeight: FontWeight.bold),
                          //     ),
                          //     SizedBox(
                          //       width: 60,
                          //     ),
                          //     Text(
                          //       '1',
                          //       style: TextStyle(
                          //           color: Colors.black ,
                          //           fontSize: 15,
                          //           fontWeight: FontWeight. w400),
                          //     ),
                          //   ],
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment. spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Product',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),

                            Row(
                              children: [
                                Text(
                                  'Qty',
                                  style: TextStyle(
                                      color: Colors.black ,
                                      fontSize: 15,
                                      fontWeight: FontWeight. bold),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  ' Price',
                                  style: TextStyle(
                                      color: Colors.black ,
                                      fontSize: 15,
                                      fontWeight: FontWeight. bold),
                                ),
                              ],
                            )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Blue-ray Disc :',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),

                                Row(

                                  children: [
                                    Text(
                                      '01',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight. bold),
                                    ),
                                    SizedBox(width: 10/1,),
                                    Text(
                                      '25.00',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight. bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Number of Copies',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '02',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight. bold),
                                    ),
                                    SizedBox(width: 10/1,),
                                    Text(
                                      '28.00'
                                           ,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight. bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shipping',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    SizedBox(width: 10/1,),
                                    Text(
                                      'Free'
                                      ,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight. bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Divider(
                            thickness: 2.0,
                          ),
                          SizedBox(height: 10,),

                          // Container(
                          //   color: Colors.greenAccent,
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Text(
                          //         'Price',
                          //         style: TextStyle(
                          //             color:  Color.fromRGBO(120,144,156,300),
                          //             fontSize: 20,
                          //             fontWeight: FontWeight.bold),
                          //       ),
                          //
                          //       Text(
                          //         ' 105',
                          //         style: TextStyle(
                          //             color: Color.fromRGBO(120,144,156,300) ,
                          //             fontSize: 20,
                          //             fontWeight: FontWeight. bold),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          Container(
                            height: 60,
                            width: 250,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromRGBO(156,204,101,10),
                              child:
                              Container(

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order Total',
                                      style: TextStyle(
                                          color:  Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    Text(
                                      ' 105',
                                      style: TextStyle(
                                          color: Colors.white ,
                                          fontSize: 20,
                                          fontWeight: FontWeight. bold),
                                    ),
                                  ],
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => cart_Screen()),
                                );
                              },
                            ),
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

        ],
      ),
    );
  }
}
