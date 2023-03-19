import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final usernameKey, passwordKey;

  Screen2({@required this.usernameKey, this.passwordKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          //removes back button
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Text(
              "Username: " + usernameKey + '\n' + "Password: " + passwordKey),
        ));
  }
}
