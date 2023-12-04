import 'package:flutter/material.dart';
import 'package:top_ten/show_item_details_page.dart';
import 'information.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});


  @override
  Widget build(BuildContext context) {
    var information = new Information();

    return ListView.builder(
        itemCount: information.name.length,
        itemBuilder: (BuildContext context, int index) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.0, color: Color.fromRGBO(40, 61, 74, 1)),
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
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 5,
                      offset: Offset(0, 7),
                    ),
                  ],
                ),
                child: ListTile(
                  title: Text(
                    "${information.name[index]}",
                    style: TextStyle(
                      color: Color.fromRGBO(58, 96, 115, 1),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          // color:Color.fromRGBO(214, 209, 203, 1),
                          color: Colors.black,
                          blurRadius: 0.3,
                        ),
                      ],
                    ),
                  ),
                  subtitle: Text(
                    "${information.subTitle[index]}",
                    style: TextStyle(color: Color.fromRGBO(86, 102, 106, 1)),
                  ),
                  leading: Container(
                    width: 50.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 7.0,
                          spreadRadius: 3.0,
                        ),
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      // radius: 60.0,
                      backgroundImage:
                          AssetImage("${information.flagsCountriesImage[index]}"),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(83, 124, 145, 1),
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, '/show_item_details_page');
                    Navigator.push(context, MaterialPageRoute(builder: (con)=> ShowItemDetailsPage(index: index,) ));
                  },
                ),
              ),
            ),
          );
        });
  }
}
