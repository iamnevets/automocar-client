import 'package:automocar/controller/usersharedpreferences.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _signUpFormKey = GlobalKey<FormState>();

  String firstName = '';
  String lastName = '';
  String mobileNumber = '';
  String pwd = '';

  @override
  void initState() {
    super.initState();
    print('=================================================');
    print(mobileNumber);
    print('=================================================');
    print(pwd);
    print('=================================================');
    print(firstName);
    print('=================================================');
    print(lastName);

    // This will return a value of null, because there is no data in there. If so, return an empty string ?? ''
    firstName = UserSharedPreferences.getFirstName() ?? '';
    lastName = UserSharedPreferences.getLastName() ?? '';
    mobileNumber = UserSharedPreferences.getMobileNumber() ?? '';
    pwd = UserSharedPreferences.getPwd() ?? '';
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
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                          child: Text(
                        'Create a new account.',
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
                        topRight: Radius.circular(40),
                        // topRight: Radius.circular(30),
                      )),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20.0, 70, 20.0, 0),
                    child: _buildSignUpForm(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Form _buildSignUpForm(BuildContext context) {
    return Form(
      key: _signUpFormKey,
      child: Column(
        children: [
          TextFormField(
            initialValue: firstName,
            onChanged: (firstName) =>
                setState(() => this.firstName = firstName),
            validator: (value) {
              if (value!.isEmpty) {
                return 'First name cannot be empty';
              } else if (value.length < 3) {
                return 'First name should not be less than 3 characters';
              }
            },
            decoration: InputDecoration(
                hintText: 'First Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            initialValue: lastName,
            onChanged: (lastName) => setState(() => this.lastName = lastName),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Last name cannot be empty';
              } else if (value.length < 3) {
                return 'Last name should not be less than 3 characters';
              }
            },
            decoration: InputDecoration(
                hintText: 'Last Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            initialValue: mobileNumber,
            onChanged: (mobileNumber) => setState(() => this.mobileNumber = mobileNumber),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Mobile Number cannot be empty';
              } else if (value.length > 10) {
                return 'Mobile Number should not be more than 10 characters';
              } else if (value.length < 9) {
                return 'Mobile Number should not be less than 10 characters';
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
            onChanged: (pwd) => setState(() => this.pwd = pwd),
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
            height: 20.0,
          ),
          Container(
            // If you already have account then log in instead
            width: double.infinity,
            height: 35,
            color: Colors.grey[200],
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Center(
                child: Text(
                  "ALREADY HAVE AN ACCOUNT?",
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
              await UserSharedPreferences.setFirstName(firstName);
              await UserSharedPreferences.setLastName(lastName);
              await UserSharedPreferences.setMobileNumber(mobileNumber);
              await UserSharedPreferences.setPwd(pwd);
              if (_signUpFormKey.currentState!.validate()) {
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
                  'SIGN UP',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
