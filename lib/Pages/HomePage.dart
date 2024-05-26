import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(76, 187, 155, 1.000),
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
             
             Padding(padding: EdgeInsets.all(8),
             child : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                
                  const Icon(Icons.menu,
                  color: Colors.white,
                  ),
                  const Text('SPLITWISE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: IconButton(
                            icon: const Icon(Icons.search,
                            color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: const Icon(Icons.more_vert,
                            color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
                          color: const Color.fromRGBO(231, 2, 2, 1),
                        ),
                      ),
                    ),
                    Container(
                      child: const Text(
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
                      color: const Color.fromRGBO(0, 0, 0, 0.1),
                    ),
                  ],
                ),
                child: Row(
                  children: [],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                  
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

