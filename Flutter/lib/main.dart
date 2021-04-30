import 'package:ecommerce/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

Widget buildNavigation({
  @required String text,
  @required IconData icon,
  Widget widget,
  BuildContext context,
  double screenwidth,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFFE0ECF8)),
          child: Icon(icon, color: Color(0xFF0001FC), size: 18),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
              color: Color(0xFF1F53E4),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

Widget buildSalesItem({
  @required String text,
  @required String photoUrl,
  @required String discount,
  @required double screenwidth,
}) {
  return Container(
    padding: EdgeInsets.only(left: 12, top: 12, right: 12, bottom: 21),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: (screenwidth - 60) * 0.5,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0xFFE0ECF8)),
          child: Text(discount, style: TextStyle(color: Color(0xFF1F53E4))),
        ),
        SizedBox(height: 22),
        Center(child: Image.asset(photoUrl)),
        SizedBox(height: 22),
        Text(text, style: TextStyle(fontSize: 18, color: Color(0xFF0A1034)))
      ],
    ),
  );
}
