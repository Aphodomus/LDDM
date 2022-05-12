import 'package:flutter/material.dart';
import 'package:mobile/app/shared/widgets/drawer/drawer_widget.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);
  static final String route = '/profile';

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      drawer: DrawerWidget(),
    );
  }
}
