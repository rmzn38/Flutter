import 'package:ecommerce/components/bottomNavigation.dart';
import 'package:ecommerce/components/header.dart';
import 'package:ecommerce/productdetail.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  String categoryTitle;
  CategoryPage(this.categoryTitle);
  List<Map> products = [
    {
      "isim": "Dizüstü Bilgisayar 1",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999",
      
    },
    {
      "isim": "Dizüstü Bilgisayar 2",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999"
    },
    {
      "isim": "Dizüstü Bilgisayar 3",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999"
    },
    {
      "isim": "Dizüstü Bilgisayar 4",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999"
    },
    {
      "isim": "Dizüstü Bilgisayar 5",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999"
    },
    {
      "isim": "Dizüstü Bilgisayar 6",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(categoryTitle, context),
            SizedBox(height: 32),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: products.map((Map product) {
                  return buildContent(
                      product["isim"], product["fotograf"], product["fiyat"], context);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      //bottom navigation
      bottomNavigationBar("search"),
    ])));
  }
}

Widget buildContent(String title, String photoUrl, String price, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ProductDetailPage(title); }));
      },
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 24,
                  offset: Offset(0, 16))
            ]),
        child: Column(
          children: [
            SizedBox(height: 16),
            Image.asset(photoUrl),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Color(0xFF0A1034),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "TRY $price",
                  style: TextStyle(
                      color: Color(0xFF0001FC),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        )),
  );
}
