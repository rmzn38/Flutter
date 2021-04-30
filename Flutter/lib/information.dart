import 'package:ecommerce/components/bottomNavigation.dart';
import 'package:ecommerce/components/header.dart';
import 'package:flutter/material.dart';

class informationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
        
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(children: [
            header("Profil", context),
            SizedBox(height: 25),
                    Center(child: Image.asset("assets/images/human.png")),
                    SizedBox(height: 30),
                    Text(
                      "Ramazan Çiloğlu",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A1034)),
                    ),
                    SizedBox(height:15),
                    Text(
                      "Selcuk Üniversitesi Yönetim Bilişim Sistemleri",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A1034)),
                    ),
            


          ])),
          bottomNavigationBar("Information"),
    ])));
  }
}
