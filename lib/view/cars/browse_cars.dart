import 'package:flutter/material.dart';

class BrowseCarsView extends StatefulWidget {
  const BrowseCarsView({ Key? key }) : super(key: key);

  @override
  _BrowseCarsViewState createState() => _BrowseCarsViewState();
}

class _BrowseCarsViewState extends State<BrowseCarsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cars'),
        centerTitle: true,
      ),
    );
  }
}