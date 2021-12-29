
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:untitled/cart/Checkout_screen.dart';
import 'package:untitled/cart/add_Payment_screen.dart';

class Payments_method_Screen extends StatelessWidget {
  const Payments_method_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'Payment Methods',
          style: TextStyle(
              color: Color.fromRGBO(22, 97, 207, 10),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(

              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Text('My Payment'),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => add_Payment_screen()),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child:Container(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.  spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.credit_card),
                                SizedBox(width: 5,),
                                Text('Add Credit/Debit'),
                              ],
                            ),
                            Text('Defaul',style: TextStyle(color:Color.fromRGBO(181,217,139,50),fontWeight: FontWeight.bold ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text('Add Payment'),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child:Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.  spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.credit_card),
                              SizedBox(width: 5,),
                              Text('Paypal'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),

                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child:Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.  spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.credit_card),
                              SizedBox(width: 5,),
                              Text('Goggle Wallet'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined),
                        ],
                      ),
                    ),

                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child:Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.  spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.credit_card),
                              SizedBox(width: 5,),
                              Text('23453 3214234 234'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),

                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

