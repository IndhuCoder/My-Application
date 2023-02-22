
import 'package:demo_application/material_rates.dart';
import 'package:demo_application/notification.dart';
import 'package:demo_application/side_navigation_bar.dart';
import 'package:demo_application/transaction_detail.dart';

import 'package:flutter/material.dart';

import 'manage_metals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         // home:  const LoginDemo(),// Day -2
         // home:  const MyWidget(), // Day -3
         // home : const SigninDemo(),//Day -4
          //  home: Test(), //Day -5, 6
          home: const ManageMetals(), //Day - 7
          //  home: const Notifications(),
         // home: Notifications(),
     // home: TransactionDetails(),
      //home: SideNavigationBar(),
      
    );
  }
}


//Success page
