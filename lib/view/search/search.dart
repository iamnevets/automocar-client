import 'package:flutter/material.dart';


class SearchView extends StatefulWidget {
  const SearchView({ Key? key }) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search', style:TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: SizedBox(),
      ),
    );
  }
}