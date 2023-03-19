import 'package:flutter/material.dart';

void main() {
  (runApp(MaterialApp(home: imagesApp())));
}

class imagesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Working With Images")),
      body: Image(
        image: const AssetImage('assets/cats.jpg'),
        //centers image
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
