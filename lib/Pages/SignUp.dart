import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
 
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
                          nameValidate = name.text.isNotEmpty;
                          phoneNumValidate = phoneNumber.text.isNotEmpty;
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 12, bottom: 6),
                          child: Text(
                            'Name',
                              textAlign: TextAlign.left,
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
                              textAlign: TextAlign.left,
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
                              textAlign: TextAlign.left,
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
                              textAlign: TextAlign.left,
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
