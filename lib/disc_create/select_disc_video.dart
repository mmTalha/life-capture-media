import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/disc_create/Select_Videos.dart';
import 'package:untitled/login/verfication_email.dart';


class select_Video_Screen extends StatelessWidget {
  const select_Video_Screen({Key? key}) : super(key: key);

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
          'Select & Sort Videos  ',
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
      body: Column(

       crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
         
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text( 'Enter Your Disc Title',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
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
                              borderSide:
                              BorderSide(color: Colors.red)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Colors.red))),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text( 'This will be the Title that Appears on your',style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,

                ),),
                Text( 'disc Case',style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,

                ),),
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
                        builder: (context) => select_videos_screen()),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text( 'Total Available Space : 985 MB',style: TextStyle(
            color: Colors.pink,
            fontSize: 15,
            fontWeight: FontWeight.bold

          ),),
          SizedBox(height:20,),
          Text( ' Arrange your Videos in Order you Want',style: TextStyle(
            color: Colors.grey,
            fontSize: 15,

          ),),
          Text( 'Them to Play From Top (First) to bottom ',style: TextStyle(
            color: Colors.grey,
            fontSize: 15,

          ),),
          Text( '(Last) by Draging THem into Position ',style: TextStyle(
            color: Colors.grey,
            fontSize: 15,

          ),),
          SizedBox(height:220,),
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
                        builder: (context) => select_videos_screen()),
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
