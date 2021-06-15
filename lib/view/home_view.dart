import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
        title: Image.asset(
          "assets/images/logoDark.png",
          height: 30,
        ),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
