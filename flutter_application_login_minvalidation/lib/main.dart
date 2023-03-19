import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen2.dart';

void main() {
  runApp(MaterialApp(home: Login()));
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  //use a form and assign a key to it
  final formKey = GlobalKey();

  //create input controllers for validation
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  //store inputs as strings
  String usernameInput = '';
  String passwordInput = '';

  var userPair = [
    ['Mary', '123'],
    ['John', 'AA2'],
    ['Jill', '12B'],
  ];

  var matchPair = false;
  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Validation")),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //username input
              TextFormField(
                autofocus: true,
                focusNode: myFocusNode,
                controller: userNameController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'Username: '),
                textInputAction: TextInputAction.next,
              ),

              TextFormField(
                autofocus: true,
                focusNode: myFocusNode,
                controller: passwordController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(labelText: 'Password: '),
              ),

              ElevatedButton(
                child: const Text('Sign In'),
                onPressed: () {
                  print("Inputs Entered");

                  setState(() {
                    usernameInput = userNameController.text;
                    passwordInput = passwordController.text;

                    if (usernameInput.isEmpty || passwordInput.isEmpty) {
                      displayAlert('Invalid Credentials');
                    } else {
                      for (int i = 0; i < userPair.length; i++) {
                        if (usernameInput == userPair[i][0] &&
                            passwordInput == userPair[i][1]) {
                          matchPair = true;
                          break;
                        }
                      }
                    }

                    if (matchPair == false) {
                      displayAlert('Invalid Credentials');
                    } else {
                      matchPair = false;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen2(
                            usernameKey: usernameInput,
                            passwordKey: passwordInput);
                      }));
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  //Methods

  displayAlert(String info) {
    return showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Form Alert'),
            content: Text(info),
            actions: [
              TextButton(onPressed: clearFields(), child: const Text("OKAY"))
            ],
          );
        });
  }

  clearFields() {
    //clear text fields
    userNameController.clear();
    passwordController.clear();

    //set focus to first field
    myFocusNode.requestFocus();

    //don't change screens
    Navigator.of(context).pop();
  }
}
