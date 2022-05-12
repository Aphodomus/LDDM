import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/modules/favorites/favorites_page.dart';
import 'package:mobile/app/modules/home/home_controller.dart';
import 'package:mobile/app/modules/home/home_page.dart';
import 'package:mobile/app/modules/infos/infos_page.dart';
import 'package:mobile/app/modules/profile/profile_page.dart';
import 'package:mobile/app/shared/widgets/drawer/drawer_item.dart';

import '../../../modules/login/login_page.dart';

class DrawerWidget extends StatelessWidget {
  final HomeController _home$ = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    final Color primaryColorDark = Theme.of(context).primaryColorDark;
    return Drawer(
      child: Material(
          color: primaryColorDark,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 80, 24, 0),
            child: Column(children: [
              HeaderWidget(_home$.name),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'Perfil',
                icon: Icons.people,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                name: 'Home',
                icon: Icons.home,
                onPressed: () => onItemPressed(context, index: 1),
              ),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                name: 'Favoritos',
                icon: Icons.heart_broken,
                onPressed: () => onItemPressed(context, index: 2),
              ),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                name: 'Informações',
                icon: Icons.info,
                onPressed: () => onItemPressed(context, index: 3),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'Sair',
                icon: Icons.logout,
                onPressed: () => onItemPressed(context, index: 4),
              ),
            ]),
          )),
    );
  }

  void onItemPressed(BuildContext context, {@required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Profile()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Favorites()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Infos()));
        break;
      case 4:
        Modular.to.navigate(LoginPage.route, replaceAll: true);
        break;
    }
  }

  Widget HeaderWidget(String name) {
    const url = 'https://source.unsplash.com/random/600x600';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${_greeting(DateTime.now().hour)},',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Text(
              '$name!',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        )
      ],
    );
  }

  String _greeting(int hour) {
    if (hour > 0 && hour < 12) {
      return 'Bom dia';
    } else if (hour < 18) {
      return 'Boa tarde';
    } else {
      return 'Boa noite';
    }
  }
}
