import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/modules/home/home_controller.dart';
import 'package:mobile/app/shared/widgets/drawer/drawer_widget.dart';

import '../../shared/widgets/header_widget.dart';

class HomePage extends StatefulWidget {
  static final String route = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle headerStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  final HomeController _home$ = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      drawer: DrawerWidget(),
    );
  }
}
