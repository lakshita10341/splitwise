import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -200,
              left: MediaQuery.of(context).size.width / 2 - 250,
              child: Container(
                height: 500,
                width: 500,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(76, 187, 155, 1.000),
                ),
              ),
            ),
            Column(
              children: <Widget>[
               const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(
                        'image/logo.png',
                        height: 45,
                        width: 45,
                      ),
                    ),
                   const SizedBox(
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
               const SizedBox(height: 30),
                Padding(
                  padding:const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                        child:const Text(
                          'Login',
        
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
          // 
                            fontFamily: 'Lato',
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/SignUp');
                        },  
                        
                        child:const Text(
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
               const SizedBox(height: 25),
                Center(
                  child: Container(
                    height: 255,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow:const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      
                        child: Scrollbar(
                          child: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          
                         const Padding(
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
                         const Padding(
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
                         TextButton(
                           onPressed: (){}, 
                           child:const Text(
                             'Forgot your password?',
                             
                             style: TextStyle(
                               color: Color.fromRGBO(116, 116, 116, 1),
                               
                               fontSize: 14,
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
               const SizedBox(height: 20),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: Container(
                         
                          height: 50,
                          width: 110,
                           decoration: BoxDecoration(
                             color: const Color.fromRGBO(241, 237, 237, 1.000),
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
                            color: const Color.fromRGBO(21, 125, 195, 1.000),
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
      ),
    );
  }
}
