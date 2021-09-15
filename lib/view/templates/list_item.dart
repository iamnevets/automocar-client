import 'package:flutter/material.dart';

Text textcontent = Text('');

class ListTextItem extends StatelessWidget {
  const ListTextItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          width: double.infinity,
          height: 48,
          // color: Colors.grey[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Steven Armoo',
                style: TextStyle(fontSize: 20),
              ),
            ],
          )),
    );
  }
}
