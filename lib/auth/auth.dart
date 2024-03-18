import 'package:flutter/material.dart';
import 'package:todo_app/auth/login.dart';
import 'package:todo_app/auth/register.dart';

class AuthScreen extends StatelessWidget {
  static const String routeName = "AuthScreen";

  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Login"),
          bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorPadding: EdgeInsets.only(bottom: 4),
              tabs: [
            Tab(
              child: Text("Login"),
            ),
            Tab(
              child: Text("Sign Up"),
            ),
          ]),
        ),
        body:  TabBarView(
          children: [
            LoginTab(),
            RegisterTab(),
          ],
        ),
      ),
    );
  }
}
