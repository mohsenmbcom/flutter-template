import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_template/ui/home_screen.dart';
import 'package:flutter_template/ui/login_screen.dart';
import 'package:scoped_model/scoped_model.dart';

class AppRoutesModel extends Model {
  final router = Router();

  AppRoutesModel.create() {
    defineRoutes(router);
  }

  /// ToDo define all the routes of the app
  void defineRoutes(Router router) {
    router.define(
      Routes.HOME_PAGE,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return HomeScreen();
        },
      ),
    );
    router.define(
      Routes.LOGIN_PAGE,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return LoginScreen();
        },
      ),
    );
  }

  static AppRoutesModel of(BuildContext context) =>
      ScopedModel.of<AppRoutesModel>(context);
}

class Routes {
  static const String HOME_PAGE = "home_page";
  static const String LOGIN_PAGE = "login_page";
}
