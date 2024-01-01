import 'package:nedu_news/core/data/remote/auth/auth_interface.dart';
import 'package:nedu_news/core/utils/locator.dart';

class AuthServiceImpl implements AuthService {
  final AuthRepository _authRepository;

  AuthServiceImpl({
    AuthRepository? authRepository,
  }) : _authRepository = authRepository ?? locator();
}
