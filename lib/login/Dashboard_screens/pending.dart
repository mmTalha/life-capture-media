import 'package:flutter/material.dart';
import 'package:untitled/login/shippingadree.dart';

class Pending_screen extends StatelessWidget {
  const Pending_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: Column(
                children: [
                  Center(
                      child: Text(
                    'Orders Currently in Production',
                    style: TextStyle(color: Colors.grey),
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'No history found',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'Select "Create New Disc" to begin.',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    width: 140,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color.fromRGBO(22, 97, 207, 10),
                      child: Text(
                        'Create New Disc',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Shipping_address()),
                        );
                      },
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
