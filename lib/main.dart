import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SplitWise',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/Login': (context) => const Login(),
        '/SignUp': (context) => const SignUp(),
        '/HomePage': (context) => const HomePage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginSignUpScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'image/logo.png',
                    height: 126,
                    width: 128,
                  ),
                ),
                Container(
                  child: Text(
                    'Splitwise',
                    style: TextStyle(
                      color: Colors.green[400],
                      fontFamily: 'Lato',
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text('Split bills the easy way'),
          ),
        ],
      ),
    );
  }
}

class LoginSignUpScreen extends StatelessWidget {
  const LoginSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background circle
          Positioned(
            top: -200,
            left: MediaQuery.of(context).size.width / 2 - 250,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(76, 187, 155, 1.000),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'image/logo.png',
                        height: 126,
                        width: 128,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Text(
                        'SPLITWISE',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Login');
                      },
                      child: Container(
                        color: Colors.black,
                        height: 50,
                        width: 250,
                        child: Center(
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignUp');
                      },
                      child: Container(
                        color: Color.fromRGBO(76, 187, 155, 1.000),
                        height: 50,
                        width: 250,
                        child: Center(
                          child: const Text(
                            'SignUp',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                            onPressed: () {},
                            child: Container(
                                decoration: BoxDecoration(
                           color: Color.fromRGBO(241, 237, 237, 1.000),
                          borderRadius: BorderRadius.circular(8),
                        ),
                              height: 50,
                              width: 110,
                              child: Image.asset(
                                'image/google.png',
                                height: 38,
                                width: 38,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              
                                decoration: BoxDecoration(
                           color: Color.fromRGBO(21, 125, 195, 1.000),
                          borderRadius: BorderRadius.circular(8),
                        ),
                              height: 50,
                              width: 110,
                              child: Image.asset(
                                'image/fb.png',
                                height: 38,
                                width: 38,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool isVisible = false;
  bool emailValidate = true;
  bool passwordValidate = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -200,
            left: MediaQuery.of(context).size.width / 2 - 250,
            child: Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(76, 187, 155, 1.000),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'image/logo.png',
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Container(
                    child: Text(
                      'SPLITWISE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Lato',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        setState(() {
                          emailValidate = email.text.isNotEmpty;
                          passwordValidate = password.text.isNotEmpty;
                        });
                        if (emailValidate && passwordValidate) {
                          Navigator.pushNamed(context, '/HomePage');
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignUp');
                      },
                      child: Text(
                        'SignUp',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Container(
                  height: 255,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    
                      child: Scrollbar(
                        child: SingleChildScrollView(
                          child: Column(
                          children: <Widget>[
                        
                        Padding(
                          padding: EdgeInsets.only(top: 12, bottom: 6),
                          child: Text(
                            'Email Address',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextField(
                          controller: email,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorText:
                                !emailValidate ? "Email cannot be empty" : null,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12, bottom: 6),
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextField(
                          controller: password,
                          obscureText: !isVisible,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorText: !passwordValidate
                                ? "Password cannot be empty"
                                : null,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              icon: Icon(isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                        ),
                      ],
                          ),
                      ),
                      
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: Container(
                       
                        height: 50,
                        width: 110,
                         decoration: BoxDecoration(
                           color: Color.fromRGBO(241, 237, 237, 1.000),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          'image/google.png',
                          height: 38,
                          width: 38,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        
                        height: 50,
                        width: 110,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(21, 125, 195, 1.000),
                        ),
                        child: Image.asset(
                          'image/fb.png',
                          height: 38,
                          width: 38,
                          
                        ),
                        
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();
  final phoneNumber = TextEditingController();
  bool isVisible = false;
  bool emailValidate = true;
  bool passwordValidate = true;
  bool nameValidate = true;
  bool phoneNumValidate = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -200,
            left: MediaQuery.of(context).size.width / 2 - 250,
            child: Container(
              height: 550,
              width: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(76, 187, 155, 1.000),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'image/logo.png',
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Container(
                    child: Text(
                      'SPLITWISE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Lato',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        setState(() {
                          emailValidate = email.text.isNotEmpty;
                          passwordValidate = password.text.isNotEmpty;
                          nameValidate = name.text.isEmpty;
                          phoneNumValidate = phoneNumber.text.isEmpty;
                        });
                        if (emailValidate &&
                            passwordValidate &&
                            nameValidate &&
                            phoneNumValidate) {
                          Navigator.pushNamed(context, '/HomePage');
                        }
                      },
                      child: Text(
                        'SignUp',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Login');
                      },
                      child: Text(
                        'LogIn',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Scrollbar(
                    child: SingleChildScrollView(
                        child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 12, bottom: 6),
                          child: Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextField(
                          controller: name,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorText:
                                !nameValidate ? "Name cannot be empty" : null,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12, bottom: 6),
                          child: Text(
                            'Email Address',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextField(
                          controller: email,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorText:
                                !emailValidate ? "Email cannot be empty" : null,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12, bottom: 6),
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                       TextField(
                          controller: password,
                          obscureText: !isVisible,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorText: !passwordValidate
                                ? "Password cannot be empty"
                                : null,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              icon: Icon(isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12, bottom: 6),
                          child: Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextField(
                          controller: phoneNumber,
                          decoration: InputDecoration(
                            
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorText: !phoneNumValidate
                                ? "Phone Number cannot be empty"
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                  ),
                
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: Container(
                       
                        height: 50,
                        width: 110,
                         decoration: BoxDecoration(
                           color: Color.fromRGBO(241, 237, 237, 1.000),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          'image/google.png',
                          height: 38,
                          width: 38,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                         height: 50,
                        width: 110,
                         decoration: BoxDecoration(
                           color: Color.fromRGBO(21, 125, 195, 1.000),
                          borderRadius: BorderRadius.circular(8),
                        ),
                       
                        child: Image.asset(
                          'image/fb.png',
                          height: 38,
                          width: 38,
                        ),
                      
                        
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(76, 187, 155, 1.000),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Icon(Icons.menu),
              Text('SPLITWISE'),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 62,
                  width: 62,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Color.fromRGBO(231, 2, 2, 1),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                  ),
                ],
            ),
          
          ),
        ],
      ),
    );
  }
}
