import 'package:ecomm_395/ui/pages/cart/cart_page.dart';
import 'package:flutter/material.dart';

import 'nav_pages/nav_home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;

  List<Widget> navWidgets = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: navWidgets[selectedIndex],
      backgroundColor: Colors.black,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        elevation: 21,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                selectedIndex = 0;
                setState(() {});
              },
              icon: Icon(
                selectedIndex == 0
                    ? Icons.dashboard_customize
                    : Icons.dashboard_customize_outlined,
                color: selectedIndex == 0 ? Colors.orange : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                selectedIndex = 1;
                setState(() {});
              },
              icon: Icon(
                Icons.favorite_border,
                color: selectedIndex == 1 ? Colors.orange : Colors.grey,
              ),
            ),
            SizedBox(width: 50),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => CartPage()));
                /*selectedIndex = 3;
                setState(() {});*/
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: selectedIndex == 3 ? Colors.orange : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                selectedIndex = 4;
                setState(() {});
              },
              icon: Icon(
                Icons.account_circle_outlined,
                color: selectedIndex == 4 ? Colors.orange : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
