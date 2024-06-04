import 'package:flutter/material.dart';

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
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(76, 187, 155, 1.000),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(
                        'image/logo.png',
                        height: 126,
                        width: 128,
                      ),
                    ),
                   const SizedBox(height: 20),
                   const SizedBox(
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
              SizedBox(
                child: Column(
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Login');
                      },
                      child: Container(
                     
                          decoration: BoxDecoration(
                            color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 50,
                        width: 250,
                        child:const Center(
                          child:  Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                   const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignUp');
                      },
                      child: Container(
                       
                        height: 50,
                        width: 250,
                          decoration: BoxDecoration(
                           color: Color.fromRGBO(76, 187, 155, 1.000),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child:const Center(
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
                   const SizedBox(height: 20),
                    SizedBox(
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
                           color: const Color.fromRGBO(21, 125, 195, 1.000),
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
