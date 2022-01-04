import 'package:flutter/material.dart';
import 'package:untitled/Shipping_Address_Screens/Select_new_Address.dart';
import 'package:untitled/cart/Payments_method.dart';



class Checkout_Screen extends StatelessWidget {
  const Checkout_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Checkout',
          style: TextStyle(
              color: Color.fromRGBO(22, 97, 207, 10),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
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
      body:
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     new Center(
      //         child: new Container(
      //           margin: EdgeInsets.only(top: 10),
      //           height: 300,
      //           width: 300,
      //           decoration: new BoxDecoration(
      //               color: Color.fromRGBO( 245,245,245,5 ),
      //               borderRadius: BorderRadius.circular(10)),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             children: [
      //               Container(
      //                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      //                 child: Column(
      //                   children: [
      //                     Row(
      //                       children: [
      //                         Text(
      //                           'Test Disc 01',
      //                           style: TextStyle(
      //                               color:Colors.black ,
      //                               fontSize: 15,
      //                               fontWeight: FontWeight.bold),
      //                         ),
      //                         SizedBox(
      //                           width: 60,
      //                         ),
      //                         Text(' Edit'),
      //                         SizedBox(
      //                           width: 5,
      //                         ),
      //                         Text('Remove'),
      //                       ],
      //                     ),
      //                     Divider(
      //                       thickness: 2.0,
      //                     ),
      //
      //                   ],
      //                 ),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Text(
      //                   'Product',
      //                   style: TextStyle(
      //                       color: Colors.black,
      //                       fontSize:20,
      //                       fontWeight: FontWeight. w400),
      //                 ),
      //               ),
      //               Container(
      //                 padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      //                 child: Column(
      //                   children: [
      //
      //                     // Row(
      //                     //   children: [
      //                     //     Text(
      //                     //       'Test Disc 01',
      //                     //       style: TextStyle(
      //                     //           color: Colors.grey,
      //                     //           fontSize: 15,
      //                     //           fontWeight: FontWeight.bold),
      //                     //     ),
      //                     //     SizedBox(
      //                     //       width: 50,
      //                     //     ),
      //                     //     Text(
      //                     //       'Divsn Pixel Agency',
      //                     //       style: TextStyle(
      //                     //           color: Colors.black ,
      //                     //           fontSize: 15,
      //                     //           fontWeight: FontWeight. w400),
      //                     //     ),
      //                     //   ],
      //                     // ),
      //                     //
      //                     // Row(
      //                     //
      //                     //   children: [
      //                     //     Text(
      //                     //       'Format',
      //                     //       style: TextStyle(
      //                     //           color: Colors.grey,
      //                     //           fontSize: 15,
      //                     //           fontWeight: FontWeight.bold),
      //                     //     ),
      //                     //     SizedBox(
      //                     //       width:90,
      //                     //     ),
      //                     //     Text(
      //                     //       'DVD',
      //                     //       style: TextStyle(
      //                     //           color: Colors.black ,
      //                     //           fontSize: 15,
      //                     //           fontWeight: FontWeight. w400),
      //                     //     ),
      //                     //   ],
      //                     // ),
      //                     // Row(
      //                     //
      //                     //   children: [
      //                     //     Text(
      //                     //       'Number of Copies',
      //                     //       style: TextStyle(
      //                     //           color: Colors.grey,
      //                     //           fontSize: 15,
      //                     //           fontWeight: FontWeight.bold),
      //                     //     ),
      //                     //     SizedBox(
      //                     //       width: 60,
      //                     //     ),
      //                     //     Text(
      //                     //       '1',
      //                     //       style: TextStyle(
      //                     //           color: Colors.black ,
      //                     //           fontSize: 15,
      //                     //           fontWeight: FontWeight. w400),
      //                     //     ),
      //                     //   ],
      //                     // ),
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment. spaceBetween,
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         Text(
      //                           'Title of Disc :',
      //                           style: TextStyle(
      //                               color: Colors.grey,
      //                               fontSize: 15,
      //                               fontWeight: FontWeight.bold),
      //                         ),
      //
      //                         Text(
      //                           'Divsn Pixel Agency',
      //                           style: TextStyle(
      //                               color: Color.fromRGBO(120,144,156,300) ,
      //                               fontSize: 15,
      //                               fontWeight: FontWeight. bold),
      //                         ),
      //                       ],
      //                     ),
      //                     SizedBox(height: 10,),
      //                     Container(
      //
      //                       child: Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Text(
      //                             'Format :',
      //                             style: TextStyle(
      //                                 color: Colors.grey,
      //                                 fontSize: 15,
      //                                 fontWeight: FontWeight.bold),
      //                           ),
      //
      //                           Text(
      //                             'DVD ',
      //                             style: TextStyle(
      //
      //                                 color: Color.fromRGBO(120,144,156,300) ,
      //                                 fontSize: 15,
      //                                 fontWeight: FontWeight. bold),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     SizedBox(height: 10,),
      //                     Container(
      //                       child: Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Text(
      //                             'Number of Copies',
      //                             style: TextStyle(
      //                                 color: Colors.grey,
      //                                 fontSize: 15,
      //                                 fontWeight: FontWeight.bold),
      //                           ),
      //
      //                           Text(
      //                             '1',
      //                             style: TextStyle(
      //                                 color: Color.fromRGBO(120,144,156,300) ,
      //                                 fontSize: 15,
      //                                 fontWeight: FontWeight. bold),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     SizedBox(height: 10,),
      //                     Divider(
      //                       thickness: 2.0,
      //                     ),
      //                     SizedBox(height: 10,),
      //                     Container(
      //                       child: Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Text(
      //                             'Price',
      //                             style: TextStyle(
      //                                 color:  Color.fromRGBO(120,144,156,300),
      //                                 fontSize: 20,
      //                                 fontWeight: FontWeight.bold),
      //                           ),
      //
      //                           Text(
      //                             ' 105',
      //                             style: TextStyle(
      //                                 color: Color.fromRGBO(120,144,156,300) ,
      //                                 fontSize: 20,
      //                                 fontWeight: FontWeight. bold),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               // Container(
      //               //
      //               //     child: Text(
      //               //   'Product',
      //               //   style: TextStyle(
      //               //       color: Colors.black,
      //               //       fontSize: 15,
      //               //       fontWeight: FontWeight.bold),
      //               // )),
      //             ],
      //           ),
      //         )),
      //     SizedBox(height: 10,),
      //     new Center(
      //         child: new Container(
      //           height:200,
      //           width: 300,
      //           decoration: new BoxDecoration(
      //               color: Color.fromRGBO( 245,245,245,5 ),
      //               borderRadius: BorderRadius.circular(10)),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             children: [
      //               Container(
      //                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      //                 child: Column(
      //                   children: [
      //                     Row(
      //                       children: [
      //                         Text(
      //                           'Shipping Address',
      //                           style: TextStyle(
      //                               color:Colors.black ,
      //                               fontSize: 15,
      //                               fontWeight: FontWeight.bold),
      //                         ),
      //                         SizedBox(
      //                           width: 20,
      //                         ),
      //                         Text(' Edit'),
      //                         SizedBox(
      //                           width: 5,
      //                         ),
      //                         Text('Remove'),
      //                       ],
      //                     ),
      //                     Divider(
      //                       thickness: 2.0,
      //                     ),
      //
      //                   ],
      //                 ),
      //               ),
      //               Container(
      //                 padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children: [
      //                     Text( 'BOB k Pietro',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
      //                     Text( '55 Any Street philipines',style:TextStyle(color: Colors.grey,fontSize: 15),),
      //                     Text( 'Georgia - 856321',style:TextStyle(color: Colors.grey,fontSize: 15),),
      //
      //
      //                   ],
      //                 ),
      //               ),
      //               // Container(
      //               //
      //               //     child: Text(
      //               //   'Product',
      //               //   style: TextStyle(
      //               //       color: Colors.black,
      //               //       fontSize: 15,
      //               //       fontWeight: FontWeight.bold),
      //               // )),
      //             ],
      //           ),
      //         )),
      //     SizedBox(height: 30,),
      //     Center(
      //       child: Container(
      //         height: 40,
      //         width: 110,
      //         child: MaterialButton(
      //           shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(10)),
      //           color: Color.fromRGBO(22, 97, 207, 10),
      //           child: Text(
      //             'Confirm',
      //             style: TextStyle(
      //               fontFamily: 'Roboto',
      //               color: Colors.white,
      //             ),
      //           ),
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                   builder: (context) => Payments_method_Screen()),
      //             );
      //           },
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 5,),
      //
      //
      //   ],
      // ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          new Center(
              child: new Container(
                margin: EdgeInsets.only(top: 10),
                height: 300,
                width: 300,
                decoration: new BoxDecoration(
                  // color: Color.fromRGBO(245, 245, 245, 5),
                    color: Color.fromRGBO(223, 248, 255,1),
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
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              Text(
                                ' Edit',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Remove',
                                style: TextStyle(
                                    color: Colors.grey,
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
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Title of Disc: ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Divsn Pixel Agency',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Format: ',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'DVD',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Number of Copies: ',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 2.0,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total:',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '\$105.00',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
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
          SizedBox(
            height: 10,
          ),
          new Center(
              child: new Container(
                height: 130,
                width: 300,
                decoration: new BoxDecoration(
                  // color: Color.fromRGBO(245, 245, 245, 5),
                    color: Color.fromRGBO(223, 248, 255,1),
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
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                ' Edit',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Remove',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 2.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      // padding:
                      //     const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'BOB k Pietro',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            '55 Any Street philipines',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            'Georgia - 856321',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
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
            height: 50,
          ),
          Center(
            child: Container(
              height: 40,
              width: 110,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Color.fromRGBO(22, 97, 207, 10),
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Payments_method_Screen()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
