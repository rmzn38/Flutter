import 'package:ecommerce/components/bottomNavigation.dart';
import 'package:ecommerce/components/header.dart';
import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(children: [
            header("Hakkında", context),
            SizedBox(height: 25),
            Text(
              "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173004030 numaralı Öğrenci Ramazan Çiloğlu tarafından 30 Nisan 2021 günü yapılmıştır.",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0A1034)),
            ),
          ])),
      bottomNavigationBar("profile"),
    ])));
  }
}
