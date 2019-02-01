import 'package:flutter/material.dart';
import 'package:flutter_template/ui/routs_manager.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: <Widget>[
              TextField(),
              TextField(),
              RaisedButton(
                onPressed: () {
                  AppRoutesModel.of(context).router.navigateTo(
                        context,
                        Routes.HOME_PAGE,
                        replace: true,
                      );
                },
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
