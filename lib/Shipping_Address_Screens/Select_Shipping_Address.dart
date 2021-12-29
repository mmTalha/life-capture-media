import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Shipping_Address_Screens/Select_new_Address.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/provider/provider.dart';



class Select_Shipping_address_Screen extends StatelessWidget {
  const Select_Shipping_address_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool valueselect = true;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Select Shipping Address ',
          style: TextStyle(
              color: Color.fromRGBO(22, 97, 207, 10),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          // IconButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => cart_Screen()),
          //     );
          //   },
          //   icon: Icon(CupertinoIcons.cart_fill),
          //   color: Colors.black,
          // )
        ],
      ),
      body:
         Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 500,
              child:  Consumer<mainprovider>(
                builder: (context, message, child)=>
                    ListView.builder(
                  itemCount:1,
                  itemBuilder: (BuildContext context,int index){
                    return
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text( 'BOB k Pietro',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                            Text( '55 Any Street philipines',style:TextStyle(color: Colors.grey,fontSize: 15),),
                            Text( 'Georgia - 856321',style:TextStyle(color: Colors.grey,fontSize: 15),),
                            SizedBox(height: 10,),

                            Container(
                              height: 50,
                              width: 150,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: message.selectedbutton? Colors.grey : Color.fromRGBO(0,120,213,10),
                                child: Text(
                                  'Select',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: ()=> message.Update()  ,
                                // onPressed: () {
                                //
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Select_Shipping_address_Screen()),
                                //   );
                                // },
                              ),
                            ),
                         ],
                        ),
                      ) ;
                  }
              ),
            )),
            SizedBox(height:80,),
            Center(
              child: Container(
                height: 40,
                width: 140,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromRGBO(22, 97, 207, 10),
                  child: Center(
                    child: Text(
                      'Add New Address',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
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


          ],
        ),

    );
  }
}
