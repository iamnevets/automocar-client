import 'package:flutter/material.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: TextStyle(color: Colors.black),
        ),
        leading: SizedBox(),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          // color: Colors.blue,
          height: MediaQuery.of(context).size.height * 0.72,
          child: Column(
            // THe first column
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        maxRadius: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Steven Armoo',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [Text('View Profile')],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, '/auth_login');
                    },
                    child: Container(
                        width: double.infinity,
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.phone),
                            Text(
                              'Mobile Number',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, '/auth_login');
                    },
                    child: Container(
                        width: double.infinity,
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.location_on),
                            Text(
                              'Kaneshie',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, '/auth_login');
                    },
                    child: Container(
                        width: double.infinity,
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.history),
                            Text(
                              'Service History',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, '/auth_login');
                    },
                    child: Container(
                        width: double.infinity,
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.time_to_leave_outlined),
                            Text(
                              'My Cars',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, '/auth_login');
                    },
                    child: Container(
                        width: double.infinity,
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.help),
                            Text(
                              'About',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Container(
                    width: double.infinity,
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back),
                        Text(
                          'Sign Out',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
