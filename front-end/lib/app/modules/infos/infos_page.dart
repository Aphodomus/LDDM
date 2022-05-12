import 'package:flutter/material.dart';
import 'package:mobile/app/shared/widgets/drawer/drawer_widget.dart';

class Infos extends StatelessWidget {
  const Infos({Key key}) : super(key: key);
  static final String route = '/infos';

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informações'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      drawer: DrawerWidget(),
    );
  }
}
