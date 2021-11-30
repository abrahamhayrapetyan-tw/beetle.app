import 'package:app/data/network/constants/endpoints.dart';
import 'package:app/data/network/dio_client.dart';
import 'package:app/models/auth/authorization.dart';

class AuthApi {
  final DioClient _dioClient;

  AuthApi(this._dioClient);

  Future<Authorization> postGetToken({String? email}) async {
    try {
      var map = <String, dynamic>{};
      map['email'] = email;
      final res = await _dioClient.post(Endpoints.postGetToken, data: map);
      return Authorization.fromMap(res);
    } catch (e) {
      rethrow;
    }
  }
}