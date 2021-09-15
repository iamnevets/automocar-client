import 'package:flutter/material.dart';

class MyCarsView extends StatefulWidget {
  const MyCarsView({Key? key}) : super(key: key);

  @override
  _MyCarsViewState createState() => _MyCarsViewState();
}

class _MyCarsViewState extends State<MyCarsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [Text("My Cars")],
          ),
        ),
      ),
    );
  }
}
