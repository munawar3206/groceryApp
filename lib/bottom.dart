import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/views/cart.dart';
import 'package:groceryapp/views/customers.dart';
import 'package:groceryapp/views/homepage.dart';
import 'package:groceryapp/views/new_order.dart';
import 'package:groceryapp/views/return_order.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> bottomBarPages = [
    const HomePage(),
    const NewOrders(),
    const Cart(),
    const Reorder_Order(),
    const Customer()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: bottomBarPages[_currentIndex],
        bottomNavigationBar: FloatingNavbar(
          onTap: (int val) => setState(() => _currentIndex = val),
          currentIndex: _currentIndex,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(
              icon: Icons.add,
              title: 'Orders',
            ),
            FloatingNavbarItem(
              icon: Icons.shopping_cart_outlined,
              title: 'Cart',
            ),
            FloatingNavbarItem(icon: Icons.keyboard_return, title: 'Returns'),
            FloatingNavbarItem(icon: Icons.people_alt_sharp, title: 'Customer'),
          ],
        ),
      ),
    );
  }
}
