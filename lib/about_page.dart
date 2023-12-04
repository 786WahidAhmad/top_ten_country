import 'package:flutter/material.dart';
import 'information.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Information information = new Information();

  double _width = 90.0;
  double _hight = 90.0;
  double _wi = 90.0;
  double _hi = 90.0;
  double _w = 90.0;
  double _h = 90.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Color.fromRGBO(57, 64, 70, 0.741),
          ),
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            title: Text(
              "Top Ten Country",
              style: TextStyle(
                color: Color.fromRGBO(51, 69, 84, 1),
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    color: Color.fromRGBO(214, 209, 203, 1),
                    blurRadius: 0.5,
                  ),
                ],
              ),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(22, 34, 42, 1),
                    Color.fromRGBO(58, 96, 115, 1),
                  ], // Set your desired colors here
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(22, 34, 42, 1),
                  Color.fromRGBO(58, 96, 115, 1),
                  Color.fromRGBO(58, 96, 115, 1),
                  Color.fromRGBO(22, 34, 42, 1),
                ],
              ),
            ),
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 17.0, top: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "About Us",
                        style: TextStyle(
                          color: Color.fromRGBO(58, 96, 115, 1),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 0.5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: Color.fromRGBO(22, 34, 42, 1),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(22, 34, 42, 1),
                        Color.fromRGBO(58, 96, 115, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 7,
                        blurRadius: 5,
                        offset: Offset(0, 7),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_width == 90.0) {
                                  _width = 170.0;
                                  _hight = 170.0;
                                  _wi = 90.0;
                                  _hi = 90.0;
                                  _w = 90.0;
                                  _h = 90.0;
                                  information.text = information.ourName[0];
                                  information.info = """
Name:          ${information.ourName[0]}
LastName:  ${information.ourLN[0]}
Education:   ${information.ourEducation[0]}
Email:           ${information.ourEmail[0]}
                                       """;
                                } else{
                                  _width = 90.0;
                                  _hight = 90.0;
                                  information.info = "Our information";
                                  information.text = "Please click on the pictures above to see information!";
                                }
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: _width,
                              height: _hight,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0, 2),
                                    blurRadius: 25.0,
                                    spreadRadius: 8.0,
                                  ),
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 0.5,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage: AssetImage("images/our_photos/wahidahmad.jpg"),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(information.ourName[0],style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_w == 90.0) {
                                  _w = 170.0;
                                  _h = 170.0;
                                  _width = 90.0;
                                  _hight = 90.0;
                                  _wi = 90.0;
                                  _hi = 90.0;

                                  information.text = information.ourName[1];
                                  information.info = """
Name:          ${information.ourName[1]}
LastName:  ${information.ourLN[1]}
Education:   ${information.ourEducation[1]}
Email:           ${information.ourEmail[1]}
                                       """;
                                } else{
                                  _w = 90.0;
                                  _h = 90.0;
                                  information.info = "Our information";
                                  information.text = "Please click on the pictures above to see information!";
                                }
                              });
                            },
                            child: Container(
                              width: _w,
                              height: _h,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0, 2),
                                    blurRadius: 25.0,
                                    spreadRadius: 8.0,
                                  ),
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 0.5,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage:
                                      AssetImage("images/our_photos/nezamuddin.jpg"),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(information.ourName[1],style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_wi == 90.0) {
                                  _wi = 170.0;
                                  _hi = 170.0;
                                  _w = 90.0;
                                  _h = 90.0;
                                  _width = 90.0;
                                  _hight = 90.0;

                                  information.text = information.ourName[2];
                                  information.info = """
Name:          ${information.ourName[2]}
LastName:  ${information.ourLN[2]}
Education:   ${information.ourEducation[2]}
Email:           ${information.ourEmail[2]}
                                       """;
                                } else{
                                  _wi = 90.0;
                                  _hi = 90.0;
                                  information.info = "Our information";
                                  information.text = "Please click on the pictures above to see information!";
                                }
                              });
                            },
                            child: Container(
                              width: _wi,
                              height: _hi,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0, 2),
                                    blurRadius: 25.0,
                                    spreadRadius: 8.0,
                                  ),
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 0.5,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage:
                                      AssetImage("images/our_photos/danial.jpg"),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(information.ourName[2],style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    information.text,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(22, 34, 42, 1),
                          Color.fromRGBO(58, 96, 115, 1),
                        ],
                      ),
                      border: Border.all(
                          width: 1.0, color: Color.fromRGBO(22, 34, 42, 1)),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 7,
                          blurRadius: 5,
                          offset: Offset(0, -7),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 35),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Our Info:",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 11.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 78,
                              height: 2,
                              color: const Color.fromARGB(255, 0, 0, 0),
                        
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            information.info,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
