import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Shipping_Address_Screens/Select_Shipping_Address.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/disc_create/Select_Videos.dart';
import 'package:untitled/login/verfication_email.dart';

class Select_sort_video_Screen extends StatefulWidget {
  const Select_sort_video_Screen({Key? key}) : super(key: key);

  @override
  _Select_sort_video_ScreenState createState() =>
      _Select_sort_video_ScreenState();
}

class _Select_sort_video_ScreenState extends State<Select_sort_video_Screen> {
  @override
  Widget build(BuildContext context) {
    bool _flag = true;
    bool selected = false;
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
          'Select & Sort Videos  ',
          style: TextStyle(
              color: Color.fromRGBO(22, 97, 207, 10),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Enter Your Disc Title',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                            prefixStyle: TextStyle(color: Colors.grey),
                            hintText: 'Type here Your Disc Title',
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
                                borderSide: BorderSide(color: Colors.red))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'This will be the Title that Appears on your',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'disc Case',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: 50,
                width: 250,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.orange,
                  child: Text(
                    'Select Videos',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Select_Shipping_address_Screen()),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Total Available Space : 985 MB',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Arrange your Videos in Order you Want',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Text(
              'Them to Play From Top (First) to bottom ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Text(
              '(Last) by Draging them into Position',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Container(
              height: 240,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return GestureDetector(
                        onTap: () => setState(() => _flag = !_flag),
                        child: Container(
                            height: 100,
                            width: 400,
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                color: _flag
                                    ? Colors.white
                                    : Color.fromRGBO(252,228,236,10),
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 120,
                                  color: selected
                                      ? Colors.red
                                      : Colors.grey.shade300,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Text(
                                        'Video Testing 01',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      '64.00 MB',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 0,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: _flag
                                          ? Colors.grey
                                          : Colors.red,
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(5)),
                                  child: Icon(
                                    Icons.delete,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                       setState(() => _flag = !_flag );
                                  },
                                )
                              ],
                            )),
                      );
                    });
                  }),
            ),
            SizedBox(
              height: 20,
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
                          builder: (context) =>
                              Select_Shipping_address_Screen()),
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
