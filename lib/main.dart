import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:untitled/login/loginscreen.dart';
import 'package:untitled/login/shippingadree.dart';
import 'package:untitled/login/user-Affrement.dart';
import 'package:untitled/provider/provider.dart';
import 'package:us_states/us_states.dart';
import 'package:untitled/provider/widgets.dart';

import 'login/privacy_policy.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:Color.fromRGBO(22, 97, 207, 10),
  ));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => mainprovider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(


      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.black),
        fontFamily: 'Roboto'
        ,
      backgroundColor: Colors.white,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool splash = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () => splash = true);
    // Navigator.pushReplacement(context,
    // MaterialPageRoute(builder: (context) => onboradingscreen_1()
    // )
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.white,
    //   child: Container(
    //     height: 20,
    //     width: 20,
    //     child: Image.asset(
    //       'images/last.png',
    //       height: 10,
    //       width: 10,
    //     ),
    //   ),
    // );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Image.asset('images/last.png', height: 130)),
          ),
          SizedBox(
            height: 30,
          ),
          FutureBuilder(
              future: Future.delayed(Duration(seconds: 2)),
              builder: (c, s) => s.connectionState != ConnectionState.done
                  ? Container(
                      height: 40,
                      width: 110,
                    )
                  : Container(
                      padding: EdgeInsets.only(left: 60, right: 60),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 110,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromRGBO(22, 97, 207, 10),
                              child: Text(
                                'New user',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: widget().fontsize),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                            title: 'juiku8i',
                                          )),
                                );
                              },
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 110,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromRGBO(22, 97, 207, 10),
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: widget().fontsize),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login_Screen()),
                                );
                              },
                            ),
                          ),
                        ],
                      )),
                    ))
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool agree = false;

  bool _isObscure = true;
  String? countryValue;
  String? stateValue;
  String? cityValue;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController dateofbirth = TextEditingController();
  TextEditingController Emailaddress = TextEditingController();
  TextEditingController confirmemailaddress = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  int? agelimit = 12;

  calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    agelimit = age;
    return agelimit;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidate: true,
        key: formkey,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Container(
                          child: Text(
                    'Create your account',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      fontSize: widget().headingsize,),
                  ))),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Container(
                          child: Column(
                    children: [
                      Text(
                        'LifeCapture Media’s does not share any of',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        'your information in any way ',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 310,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: firstname,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Your first name';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'First name',
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red))),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 310,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: lastname,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Your last name';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'Last name',
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red))),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 310,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  textCapitalization:
                                  TextCapitalization.sentences,
                                  controller: username,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Your username';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                      TextStyle(color: Colors.grey),
                                      hintText: 'User name',
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          borderSide:
                                          BorderSide(color: Colors.red)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          borderSide:
                                          BorderSide(color: Colors.red))),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),

                            GestureDetector(
                              child: Container(
                                width: 310,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: TextFormField(
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    onTap: () async {
                                      var datePicked =
                                          await DatePicker.showSimpleDatePicker(
                                        context,
                                        initialDate: DateTime(1994),
                                        firstDate: DateTime(1960),
                                        lastDate: DateTime(2012),
                                        dateFormat: "MMM d, yyyy	",
                                        locale: DateTimePickerLocale.en_us,
                                        looping: true,
                                      );
                                      setState(() {
                                        dateofbirth.text =
                                            '${datePicked!.month}-${datePicked.day}-${datePicked.year.toString()}';

                                      });

                                      print(calculateAge(datePicked!));

                                      dateofbirth = calculateAge(datePicked);

                                      print(dateofbirth.text);
                                      var datetime3 = DateFormat.MMMMEEEEd()
                                          .format(datePicked);
                                      print(datetime3);
                                    },
                                    controller: dateofbirth,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Your date of birth';
                                      }
                                      if (agelimit! < 18) {
                                        return 'You must be at least 18 years old to use this service. ';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        errorStyle: TextStyle(
                                          fontSize: 10.0,
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.calendar_today),
                                          onPressed: () async {},
                                        ),
                                        hintStyle: TextStyle(
                                          fontFamily: 'Roboto',
                                        ),
                                        prefixStyle:
                                            TextStyle(color: Colors.grey),
                                        hintText: 'Date of birth ',
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                            )),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.red)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.red))),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 310,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: Emailaddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Your email address';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'Email address',
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red))),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 310,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: confirmemailaddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Your confirm email address';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'Confirm  email address',
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red))),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 310,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: password,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Your password';
                                    }
                                    return null;
                                  },
                                  obscureText: _isObscure,
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'Password',
                                      suffixIcon: IconButton(
                                          icon: Icon(_isObscure
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          }),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red))),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Transform.scale(
                                    scale: 0.6,
                                    child: SizedBox(
                                      height: 15.0,
                                      width: 25.0,
                                      child: Checkbox(
                                          focusColor:
                                              Color.fromRGBO(252, 186, 24, 1),
                                          hoverColor:
                                              Color.fromRGBO(252, 186, 24, 1),
                                          checkColor:
                                              Color.fromRGBO(22, 97, 207, 10),
                                          activeColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value ?? false;
                                            });
                                          }),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                          'By proceeding i agree to LifeCapture Media’s', style: TextStyle(

                                          fontSize: 13),),
                                      RichText(
                                          text: TextSpan(children: <TextSpan>[
                                        TextSpan(
                                          text: "User Agreement ",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontSize: 13),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                    builder: (context) =>
                                                        User_Aggrement_Screen()),
                                              );
                                            },
                                        ),
                                        TextSpan(
                                            text: "and",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13)),
                                        TextSpan(
                                          text: " Privacy Policy ",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontSize: 13),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                    builder: (context) =>
                                                        Privacy_policy()),
                                              );
                                            },
                                        ),
                                      ]))
                                    ],
                                  )
                                ])
                          ],
                        ),
                      ),
                    ],
                  ))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height:widget().height,
                      width:widget().width,
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: agree
                              ? agelimit! > 18
                                  ? Color.fromRGBO(22, 97, 207, 10)
                                  : Colors.grey
                              : Colors.grey,
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                                fontSize: widget().fontsize,
                            ),
                          ),
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              agree
                                  ? Navigator.push(
                                      context,
                                CupertinoPageRoute(
                                          builder: (context) =>
                                              Shipping_address(
                                                confirmemailaddress:
                                                confirmemailaddress.text,
                                                dateofbirth: dateofbirth.text,
                                                emailaddress: Emailaddress.text,
                                                firstname: firstname.text,
                                                lastname: lastname.text,
                                                password: password.text,
                                              )),
                                    )
                                  : null;
                            } else {
                              return null;
                            }
                          })),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
