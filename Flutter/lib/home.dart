import 'package:ecommerce/categories.dart';
import 'package:ecommerce/components/bottomNavigation.dart';
import 'package:ecommerce/components/label.dart';
import 'package:ecommerce/information.dart';
import 'package:ecommerce/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  //BAŞLIK
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Text(
                      "Anasayfa",
                      style: TextStyle(
                        fontSize: 32,
                        color: Color(0xFF0A1034),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  //BANNER
                  Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 24, right: 36, top: 14, bottom: 18),
                        decoration: BoxDecoration(
                            color: Color(0xFF0001FC),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Taşınabilir Hoparlör",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "TRY 279",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Image.asset("assets/images/speake.png")
                            ]),
                      )),

                  //BUTONLAR
                  Padding(
                      padding: EdgeInsets.only(top: 48),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildNavigation(
                              text: "Kategoriler",
                              icon: Icons.menu,
                              widget: CategoriesPage(),
                              context: context),
                          buildNavigation(
                              text: "Profil", icon: Icons.person,widget: informationPage(),context: context),
                          buildNavigation(
                              text: "Kuponlar", icon: Icons.card_giftcard),
                          buildNavigation(
                              text: "Hakkında", icon: Icons.info,widget: profilePage(),context: context)
                        ],
                      )),

                  SizedBox(height: 40),
                  //SALES TİTLE
                  Center(
                      child: Text(
                    "Sıcak Satış",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xFF0A1034)),
                  )),
                  SizedBox(height: 16),
                  //Sales Items
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem(
                          text: "Akıllı Telefon 1",
                          photoUrl: "assets/images/phone1.png",
                          discount: "-50%",
                          screenwidth: screenwidth),
                      buildSalesItem(
                          text: "Akıllı Telefon 2",
                          photoUrl: "assets/images/phone2.png",
                          discount: "-50%",
                          screenwidth: screenwidth),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem(
                          text: "Akıllı Telefon 3",
                          photoUrl: "assets/images/phone3.png",
                          discount: "-50%",
                          screenwidth: screenwidth),
                      buildSalesItem(
                          text: "Akıllı Telefon 4",
                          photoUrl: "assets/images/phone4.png",
                          discount: "-50%",
                          screenwidth: screenwidth),
                          
                          
                    ],
                    
                  ),
                  SizedBox(height:50),
                  Row(
                    
                    
                    
                  ),
                  
                ],
                
              ),
              
            ),
            //buttom navigation bar


            bottomNavigationBar("Anasayfa"),
          ],
        ),
      ),
    );
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
    width: (screenwidth - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, right: 12, bottom: 21),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label(discount),
        SizedBox(height: 22),
        Center(child: Image.asset(photoUrl)),
        SizedBox(height: 22),
        Center(
          child: Text(text,
              style: TextStyle(fontSize: 18, color: Color(0xFF0A1034))),
        )
      ],
    ),
  );
}
