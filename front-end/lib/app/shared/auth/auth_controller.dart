import 'package:mobile/app/shared/auth/repositories/auth_repository.dart';
import 'package:mobile/app/shared/services/user_local_storage_service.dart';

import '../models/user_model.dart';

class AuthController {
  AuthController(this._authRepository, this._storageService);

  final AuthRepository _authRepository;
  final UserLocalStorageService _storageService;

  UserModel user;

  Future<void> login(String email, String password) async {
    user = await _authRepository.login(email, password);

    if (user != null) {
      await _storageService.setUserData(user);
    }
  }

  logout() async {
    user = null;
    await _storageService.clearUserData();
  }

  register() async {}
}
