import 'package:flutter/material.dart';
import 'information.dart';
// import 'my_list_view.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'home_page.dart';

class ShowItemDetailsPage extends StatelessWidget {
  int? index = 0;
  ShowItemDetailsPage({required this.index});

  @override
  Widget build(BuildContext context) {
    var info = Information();

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
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(22, 34, 42, 1),
                Color.fromRGBO(22, 34, 42, 1),
                Color.fromRGBO(58, 96, 115, 1),
                Color.fromRGBO(58, 96, 115, 1),
                Color.fromRGBO(22, 34, 42, 1),
              ],
            ),
          ),
          height: double.infinity,
          child: Expanded(
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
                        info.name[index!],
                        style: TextStyle(
                          color: Color.fromRGBO(58, 96, 115, 1),
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                              color: Colors.black,
                              // spreadRadius: 12.0,
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
                  child: Image.asset(
                    info.flagsCountriesImage[index!],
                    fit: BoxFit.cover,
                  ),
                  clipBehavior: Clip.antiAlias,
                ),
                SizedBox(
                  height: 60,
                ),
                // info for show details page
                Container(
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
                      width: 1.0,
                      color: const Color.fromRGBO(22, 34, 42, 1),
                    ),
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
                  // info for show details page
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,top: 40),
                      child: Text(
                        info.detailsCountries[index!],
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: MaterialButton(
                    padding:
                        EdgeInsets.only(top: 15.0, left: 15.0, bottom: 5.0),
                    onPressed: () async {
                      final Uri _url =
                          Uri.parse(Information().linkCountries[index!]);
                      if (!await launchUrl(_url)) {
                        throw Exception('Could not launch $_url');
                      }
                    },
                    child: Container(
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
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(58, 96, 115, 1),
                            spreadRadius: 7,
                            blurRadius: 5,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Container(
                        width: 115,
                        height: 40,
                        child: Center(
                          child: Text(
                            "More Details...",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
