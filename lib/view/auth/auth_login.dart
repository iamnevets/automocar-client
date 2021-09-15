import 'package:automocar/controller/usersharedpreferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _logInFormKey = GlobalKey<FormState>();

  String pwd = '';
  String mobileNumber = '';

  @override
  void initState() {
    super.initState();
    mobileNumber = UserSharedPreferences.getMobileNumber() ?? '';
    pwd = UserSharedPreferences.getPwd() ?? '';
    print('=================================================');
    print(mobileNumber);
    print('=================================================');
    print(pwd);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        widthFactor: double.infinity,
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                          child: Text(
                        'Your car service. When you need it.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                    ],
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        // topRight: Radius.circular(30),
                      )),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20.0, 70, 20.0, 0),
                    child: _buildLoginForm(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// SignupForm
  Form _buildLoginForm(BuildContext context) {
    return Form(
        key: _logInFormKey,
        child: Column(
          children: [
            TextFormField(
              initialValue: mobileNumber,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Mobile Number cannot be empty';
                } else if (value.length < 3) {
                  return 'Mobile Number should not be less than 3 characters';
                }
              },
              decoration: InputDecoration(
                  hintText: 'Mobile Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              initialValue: pwd,
              onChanged: (pwd) => setState(() => {this.pwd = pwd}),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password cannot be empty';
                }
              },
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: double.infinity,
              height: 35,
              color: Colors.grey[200],
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/auth_signup');
                },
                child: Center(
                  child: Text(
                    "DON'T HAVE AN ACCOUNT?",
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () async {
                await UserSharedPreferences.setMobileNumber(mobileNumber);
                await UserSharedPreferences.setPwd(pwd);
                if (_logInFormKey.currentState!.validate()) {
                  Navigator.pushReplacementNamed(context, '/home');
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).accentColor,
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                height: 45,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}







































//________________

// import 'package:flutter/material.dart';

// class LoginView extends StatefulWidget {
//   const LoginView({Key? key}) : super(key: key);

//   @override
//   _LoginViewState createState() => _LoginViewState();
// }

// class _LoginViewState extends State<LoginView> {
//   final _logInFormKey = GlobalKey<FormState>();

//   String name = '';
//   String car = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 100,
//               ),
//               Text('Log In', style: TextStyle(fontSize: 32)),
//               SizedBox(
//                 height: 50,
//               ),
//               _buildLoginForm(context)
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// // SignupForm
//   Form _buildLoginForm(BuildContext context) {
//     return Form(
//         key: _logInFormKey,
//         child: Column(
//           children: [
//             TextFormField(
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Mobile Number cannot be empty';
//                 } else if (value.length < 3) {
//                   return 'Mobile Number should not be less than 3 characters';
//                 }
//               },
//               decoration: InputDecoration(
//                   hintText: 'Mobile Number',
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10))),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             TextFormField(
//               obscureText: true,
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Password cannot be empty';
//                 }
//               },
//               decoration: InputDecoration(
//                   hintText: 'Password',
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10))),
//             ),
//             SizedBox(
//               height: 50.0,
//             ),
//             Container(
//               width: double.infinity,
//               height: 35,
//               color: Colors.grey[200],
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, '/auth_signup');
//                 },
//                 child: Center(
//                   child: Text(
//                     "DON'T HAVE AN ACCOUNT?",
//                     style: Theme.of(context).textTheme.button,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             InkWell(
//               onTap: () async {
//                 if (_logInFormKey.currentState!.validate()) {
//                   Navigator.pushReplacementNamed(context, '/');
//                 }
//               },
//               child: Container(
//                 height: 45,
//                 color: Theme.of(context).primaryColor,
//                 width: double.infinity,
//                 child: Center(
//                   child: Text(
//                     'LOG IN',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ));
//   }
// }
