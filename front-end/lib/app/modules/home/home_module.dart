import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/modules/home/home_controller.dart';
import 'package:mobile/app/modules/home/home_page.dart';
import 'package:mobile/app/shared/auth/auth_controller.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController(i.get<AuthController>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (context, args) => HomePage()),
  ];
}
