import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/modules/login/login_page.dart';
import 'package:mobile/app/shared/auth/auth_controller.dart';

class HomeController {
  HomeController(this._auth$);
  final AuthController _auth$;

  String get name => _auth$.user.name;

  Future<void> Logout() async {
    await _auth$.logout();
    Modular.to.navigate(LoginPage.route, replaceAll: true);
  }
}
