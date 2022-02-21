import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class widget {
  double fontsize = 14;
  double height = 40;
  double width = 180;
  double headingsize = 20;
  var colorheading = Colors.orange;
  Widget appbar( ){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Flexible(
          child: Builder(builder: (context) {
            return Container(

              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            );
          }),
        ),

        Container(child: Image.asset('images/logo.png',height:15,)),
      ],
    );
  }
  Widget disc(name,color){
    return   new Center(
        child: new Container(
          height: 110,
          width: 115,
          decoration: new BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                 name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),

              ],
            ),
          ),
        ));
  }
  Widget dropdownbutton(country){
    return  Center(
      child: Container(
        width:140,
        height: 50,

        child: TextDropdownFormField(

          options: country,
          decoration: InputDecoration(
            labelStyle: TextStyle(fontSize: 8),
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
              labelText: "Number of discs"),
          dropdownHeight: 200,
        ),
      ),
    );
  }
}