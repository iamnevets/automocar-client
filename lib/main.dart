import 'package:automocar/controller/navigation/navpage.dart';
import 'package:automocar/controller/usersharedpreferences.dart';
import 'package:automocar/view/account/account.dart';
import 'package:automocar/view/auth/auth_login.dart';
import 'package:automocar/view/auth/auth_signup.dart';
import 'package:automocar/view/book/book-service.dart';
import 'package:automocar/view/cars/browse_cars.dart';
import 'package:automocar/view/cars/mycars.dart';
import 'package:automocar/view/notifications/notifications.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // SharedPreferences? preferences;
  await UserSharedPreferences.init();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.deepOrange,
          accentColor: Colors.deepOrangeAccent,
          fontFamily: 'Urbanist'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginView(),
        '/home': (context) => NavView(),
        '/browse-cars': (context) => BrowseCarsView(),
        '/notifications': (context) => NotificationsView(),
        '/account': (context) => AccountView(),
        '/auth_signup': (context) => SignUpView(),
        '/book-service': (context) => BookService(),
        '/my-cars': (context) => MyCarsView(),
      },
    );
  }
}
