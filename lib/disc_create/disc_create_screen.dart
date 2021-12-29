import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/disc_create/select_disc_video.dart';
import 'package:untitled/login/verfication_email.dart';

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
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Select Your Product',
          style: TextStyle(
              color: Color.fromRGBO(22, 97, 207, 10),
              fontSize: 18,
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              new Center(
                  child: new Container(
                height: 200,
                width: 300,
                decoration: new BoxDecoration(
                    color: Color.fromRGBO(22, 97, 207, 10),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        'Blu-ray',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),

                    ],
                  ),
                ),
              )),
              SizedBox(height: 10,),
              Container(
                width: 280,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextDropdownFormField(
                    options: country,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        labelText: "Number of Disc"),
                    dropdownHeight: 380,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              new Center(
                  child: new Container(
                    height: 200,
                    width: 300,
                    decoration: new BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text(
                            'DVD',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),

                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 10,),
              Container(
                width: 280,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextDropdownFormField(
                    options: country,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        labelText: "Number of Disc"),
                    dropdownHeight: 80,
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Center(
                child: Container(
                  height: 40,
                  width: 110,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(22, 97, 207, 10),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => select_Video_Screen()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
