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