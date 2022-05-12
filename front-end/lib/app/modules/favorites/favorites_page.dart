import 'package:flutter/material.dart';
import 'package:mobile/app/shared/widgets/drawer/drawer_widget.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key key}) : super(key: key);
  static final String route = '/favorites';

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      drawer: DrawerWidget(),
    );
  }
}
