import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/ui/routs_manager.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  /// Uncomment these lines in case you need to modify system ui overlay styles
  /// But keep in mind these styles are getting automatically controlled by Flutter
  /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));*/
  runApp(ScopedModel<AppRoutesModel>(
    model: AppRoutesModel.create(),
    child: SimpleApp(),
  ));
}

class SimpleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppRoutesModel model = ScopedModel.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A simple application',
      initialRoute: Routes.LOGIN_PAGE,
      onGenerateRoute: model.router.generator,
      theme: ThemeData(
//        brightness: Brightness.light,
        primaryColor: Colors.blueGrey.shade600,
        buttonColor: Colors.pink.shade400,
        scaffoldBackgroundColor: Colors.blueGrey.shade50,
        splashColor: Colors.indigo.shade100,
        disabledColor: Colors.indigo.shade100,
        textSelectionColor: Colors.indigo.shade200,
        primarySwatch: Colors.indigo,
        accentColor: Colors.pink.shade400,
        cursorColor: Colors.pink.shade400,
        textSelectionHandleColor: Colors.pink.shade400,
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          counterStyle: TextStyle(color: Colors.transparent),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
          ),
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        buttonTheme: ButtonThemeData(
          height: 32.0,
          shape: StadiumBorder(
            side: BorderSide.none,
          ),
        ),
      ),
      locale: Locale("en"),
      // supportedLocales: [Locale("fa"), Locale("en")],
      builder: (BuildContext context, Widget child) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: Builder(
            builder: (BuildContext context) {
              return MediaQuery(
                data: MediaQuery.of(context),
                child: child,
              );
            },
          ),
        );
      },
    );
  }
}
