import 'package:flutter/material.dart';

class BookService extends StatefulWidget {
  const BookService({Key? key}) : super(key: key);

  @override
  _BookServiceState createState() => _BookServiceState();
}

class _BookServiceState extends State<BookService> {
  final _serviceFormKey = GlobalKey<FormState>();

  onSearch(String search) {
    print(search);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Text('Hire Mechanic', style: TextStyle(fontSize: 32)),
                SizedBox(
                  height: 50,
                ),
                Form(
                    // The form field
                    key: _serviceFormKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          onChanged: (value) => onSearch(value),
                          decoration: InputDecoration(
                              hintText: 'Car Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Service Type',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        InkWell(
                          onTap: () {
                            if (_serviceFormKey.currentState!.validate()) {
                              Navigator.pushReplacementNamed(context, '/home');
                            }
                          },
                          child: Container(
                            height: 45,
                            color: Theme.of(context).primaryColor,
                            width: double.infinity,
                            child: Center(
                              child: Text(
                                'CONFIRM',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
