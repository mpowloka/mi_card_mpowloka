import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("images/mpowloka.png"),
            ),
            Text(
              "Michał Powłoka",
              style: TextStyle(
                fontFamily: "Open Sans Condensed",
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            Text(
              "Freelance Flutter Developer",
              style: TextStyle(
                  fontFamily: "Open Sans Condensed",
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            SizedBox(
              height: 20,
              child: Divider(
                color: Colors.blueGrey.shade900,
                indent: 100,
                endIndent: 100,
              ),
            ),
            buildCard(Icons.phone, "+48 722 211 993"),
            buildCard(Icons.mail, "notmichalpowloka@notemail.com")
          ],
        ),
      ),
    );
  }

  Card buildCard(IconData icon, String text) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.white70,
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          text,
          style: TextStyle(
              color: Colors.blueGrey.shade900,
              fontFamily: "Open Sans Condensed"),
        ),
      ),
    );
  }
}
