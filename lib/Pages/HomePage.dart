import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'dart:ui';

class OweItems extends StatelessWidget {
  final String name;
  final String description;
  final String amount;
  final Color?colour;

  const OweItems({
    Key? key,
    required this.name,
    required this.description,
   required this.amount,
    this.colour,
  });

  @override
  Widget build(BuildContext context) {
    Color cirColour = colour ?? const Color.fromRGBO(6,154,3,1);
    if (description == "owes you") {
      cirColour = const Color.fromRGBO(231, 2, 2, 1);
    }
    return Container(
      padding:const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
       boxShadow:const [
        BoxShadow(
          blurRadius: 2,
          color: Color.fromRGBO(0, 0, 0, 0.18),
        )
       ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 46,
                  width: 46,
                  padding: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: cirColour,
                    ),
                  ),
                  child: Text(
                    name[0],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:cirColour,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding:const EdgeInsets.all(4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style:const TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(130, 125, 125, 1),
                                  ),
                                ),
                                Text(
                                  description,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(130, 125, 125, 1),
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
              ],
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                const Text(
                  '\u{20B9}',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  amount,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color.fromRGBO(97, 97, 97, 1),
                  ),
                ),
              ],
            ),
          )
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
      backgroundColor: const Color.fromRGBO(76, 187, 155, 1.000),
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    const Text(
                      'SPLITWISE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: IconButton(
                              icon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            child: IconButton(
                              icon: const Icon(
                                Icons.more_vert,
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
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      height: 62,
                      width: 62,
                      padding: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(231, 2, 2, 1),
                        ),
                      ),
                      child: const Text('N',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(76, 187, 155, 1),
                        fontSize: 36,
                      ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 8),
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
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:const [
                    BoxShadow(
                      blurRadius: 4,
                      color:  Color.fromRGBO(0, 0, 0, 0.1),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const SizedBox(
                      child: Column(
                        children: <Widget>[
                         SizedBox(
                            child: Text('You owe'),
                          ),
                         SizedBox(
                            child: Text(
                              '\u{20B9} 500',
                              style: TextStyle(
                                fontSize: 24,
                                // fontFamily: FontWeight.w400:regular,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 50,
                      color:  const Color.fromRGBO(225, 225, 225, 1),
                    ),
                    const SizedBox(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            child: Text('You owe'),
                          ),
                          SizedBox(
                            child: Text(
                              '\u{20B9} 500',
                              style: TextStyle(
                                fontSize: 24,
                                // fontFamily: FontWeight.w400:regular,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 50,
                      color: const Color.fromRGBO(225, 225, 225, 1),
                    ),
                   const SizedBox(
                      child: Column(
                        children: <Widget>[
                         SizedBox(
                            child: Text('You owe'),
                          ),
                          SizedBox(
                            child: Text(
                              '\u{20B9} 500',
                              style: TextStyle(
                                fontSize: 24,
                                // fontFamily: FontWeight.w400:regular,
                                fontWeight: FontWeight.w400,
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
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: const DefaultTabController(
                length: 3,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      tabs: [
                        Tab(
                          child: Text('Friends'),
                        ),
                        Tab(
                          child: Text('Groups'),
                        ),
                        Tab(
                          child: Text('Activities'),
                        ),
                        // activities
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                OweItems(name: 'Subhash Kohle', description: 'you owe', amount: '1500'),
                                SizedBox(
                                  height: 12,
                                ),
                               OweItems(name: 'Shobit Bakliwal', description: 'owes you', amount: '500'),
                                SizedBox(
                                  height: 12,
                                ),
                                OweItems(name: 'Firasat Durani', description: 'owes you', amount: '500'),
                                SizedBox(
                                  height: 12,
                                ),
                               OweItems(name: 'Sushil Kumar', description: 'you owe', amount: '300'),
                                SizedBox(
                                  height: 12,
                                ),
                               OweItems(name: 'Mohan Aggarwal', description: 'owes you', amount: '400'),
                                SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Text(
                              'Friends',
                            ),
                          ),
                          SingleChildScrollView(
                            child: Text(
                              'Activities',
                            ),
                          ),
                        ],
                      ),
                    ),
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


//hfdh  