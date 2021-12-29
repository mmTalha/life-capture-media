import 'package:flutter/material.dart';

class Privacy_policy extends StatelessWidget {
  const Privacy_policy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Privacy Policy',
          style: TextStyle(
              color: Color.fromRGBO(22, 97, 207, 10),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'We build a range of services that help ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    'Millions of people  daily to explore and',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    'interact with the world in new ways. our',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    'Service include :',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' Goggle apps,sites,device like ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' search,youtube,and Google home',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' Platform like the chrome browser and',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' Android Operating System',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' Product that are integrated into third - ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' party apps and sites ,like ads and ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' embedded Goggle Maps ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'We want you to understand the types of ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    'information we colect as you use our',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    'Services',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    ' we Collect information to provide better ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' services to all our user -from figuring out ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' basic staff like which language you speak to ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' more complex thing like which ads you find ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' most useful,the people who matter most to ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' you online,or which youtube videos you ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' might like ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    ' the information goggle collects,and how',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    'that information is used ,depends on how you ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' used our services and how you manage your ',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                  Text(
                    ' privacy controls.',
                    style: TextStyle(
                      color: Color.fromRGBO(120, 144, 156, 10),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
