import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => const LoginPage(),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const user = '/user';
}
