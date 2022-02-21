import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';
 import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/disc_create/select_disc_video.dart';
import 'package:untitled/login/Dashboard_screens/Drawer.dart';
import 'package:untitled/login/verfication_email.dart';
import 'package:untitled/provider/widgets.dart';

class disc_create_screen extends StatefulWidget {
  const disc_create_screen({Key? key}) : super(key: key);

  @override
  _disc_create_screenState createState() => _disc_create_screenState();
}

class _disc_create_screenState extends State<disc_create_screen> {
  @override
  Widget build(BuildContext context) {
    bool _value = false;
    String _selected = "";
    String country_id;
    List<String> country = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      '10',
      '11',
      '12',
      '13',
      '14',
      '15',
      '16',
      '17',
      '18',
      '19',
      '20',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.black,
      appBar: AppBar(

        leadingWidth: 100,
        leading:widget().appbar( ) ,
       centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),

        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title:Text('Select your product', style: TextStyle(
            color:widget().colorheading,
            fontSize: widget().headingsize,

            fontWeight: FontWeight.bold),) ,
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
      drawer: drawer_Screen(),
      body: Container(
       padding: EdgeInsets.only(left: 15,right: 15,top: 80),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Column(
               children: [
                 widget().disc('Blu-ray', Color.fromRGBO(22, 97, 207, 10)),

                 SizedBox(height: 10,),

                 widget().dropdownbutton(country),
               ],
             ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                     widget().disc('DVD',Colors.black),

                     SizedBox(height: 10,),
                    widget().dropdownbutton(country),

                ],
              )

            ],
          ),
          SizedBox(height: 30,),

            Center(
              child: Container(
                height: widget().height,
                width: widget().width,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromRGBO(22, 97, 207, 10),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontSize: widget().fontsize
                    ),
                  ),
                  onPressed: () {

                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => select_Video_Screen()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
