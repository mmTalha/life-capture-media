import 'package:flutter/material.dart';
import 'package:untitled/disc_create/Select_video.dart';
import 'package:untitled/login/verfication_email.dart';

class select_videos_screen extends StatefulWidget {
  const select_videos_screen({Key? key}) : super(key: key);

  @override
  _select_videos_screenState createState() => _select_videos_screenState();
}

class _select_videos_screenState extends State<select_videos_screen> {
  @override
  Widget build(BuildContext context) {
    bool _flag = true;
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
          'Select Videos to Upload',
          style: TextStyle(
              color: Color.fromRGBO(22, 97, 207, 10),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 520,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {

                  return StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                  return
                      GestureDetector(
                      onTap: () => setState(() => _flag = !_flag),
                      child: Container(

                          height: 100,
                          width: 400,
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              color:  _flag ? Colors.white : Color.fromRGBO(227,242,253,10),
                              border: Border.all(color:  _flag ? Colors.grey : Color.fromRGBO(227,242,253,10),),
                              
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 120,
                                color: Colors.grey.shade300,
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
                                    primary:  _flag ? Colors.grey : Color.fromRGBO(0,120,213,10),
                                    shape: CircleBorder(

                                    ),
                                    padding: EdgeInsets.all(10)),
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                ),
                                onPressed: () {
                                  setState(() => _flag = !_flag);
                                },
                              )
                            ],
                          )),
                    );
                  });
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 50,
              width: 250,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Color.fromRGBO(22, 97, 207, 10),
                child: Text(
                  'Add Selected Videos',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Select_sort_video_Screen()),
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
