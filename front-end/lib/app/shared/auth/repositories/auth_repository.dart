import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mobile/app/shared/models/user_model.dart';

class AuthRepository {
  AuthRepository(this._dio);

  final Dio _dio;

  Future<UserModel> login(String email, String password) async {
    final Response response = await _dio.post('/pokedex-backend/auth/signin',
        data: {'email': email, 'password': password});

    if (response.data == null) {
      return null;
    } else {
      return UserModel.fromMap(response.data);
    }
  }

  Future<void> register() async {}
}
