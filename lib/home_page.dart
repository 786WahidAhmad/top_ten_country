import 'package:flutter/material.dart';
import 'package:top_ten/about_page.dart';
import 'package:share/share.dart';
import 'show_item_details_page.dart';
import 'my_list_view.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // ShowItemDetailsPage(detailsCountries: detailsCountries);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/about_page': (context) => AboutPage(),
        '/show_item_details_page': (context) => ShowItemDetailsPage(index: 0,),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Color.fromRGBO(0, 0, 0, 1)
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Color.fromRGBO(22, 34, 42, 1),
          toolbarHeight: 70,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(22, 34, 42, 1),
                  Color.fromRGBO(58, 96, 115, 1)
                ],
              ),
            ),
          ),
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
          // titleTextStyle: TextStyle(
          //   fontSize: 40,
          //   fontWeight: FontWeight.w300,
          //   color: Color.fromRGBO(200, 23, 45, 1),
          // ),
          actions: [
            PopupMenuButton(
              shadowColor: Color.fromRGBO(107, 179, 230, 1),
              color: Color.fromRGBO(57, 64, 70, 0.741),
              itemBuilder: (context) => [
                PopupMenuItem(
                  onTap: () {
                    Share.share("Share the app");
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.lightBlue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Share the app", style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    Navigator.pushNamed(context, '/about_page');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.info,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("About", style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Exit", style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        body: Container(
          child: MyListView(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(22, 34, 42, 1),
                Color.fromRGBO(58, 96, 115, 1)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
