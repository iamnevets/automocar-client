import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xFFFAA321),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'R8 Spyder',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Sports Car',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/img/audi_logo.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Image(
                          image: AssetImage('assets/img/audi_r8.png'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                color: Color(0xFFFFF6C6),
                padding: EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/book-service');
                  },
                  child: Center(
                    widthFactor: .5,
                    heightFactor: .5,
                    child: Text(
                      'Hire a Mechanic',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DIY',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                            Text(
                              'Tire Replacement',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.chevron_right),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
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
                            Text(
                              'Change Oil',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.chevron_right),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
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
                            Text(
                              'Windpipe Cleaning',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.chevron_right),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
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
                            Text(
                              'Leaking Fluid',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.chevron_right),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
