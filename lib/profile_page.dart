import 'package:flutter/material.dart';
import 'package:lab5/add_contact.dart';
import 'package:lab5/function_page.dart';
import 'package:lab5/notification_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex = 0;
  bool isPressed1 = true;
  bool isPressed2 = false;
  bool isTablet = false;

  _onTap() {
    // this has changed
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) =>
            _children[currentIndex])); // this has changed
  }

  final List<Widget> _children = [
    const ProfilePage(),
    const FunctionPage(),
    const NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var shortestSide = screenSize.shortestSide;

    if (shortestSide >= 800) {
      isTablet = true;
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(214, 214, 213, 213),
      appBar: AppBar(
        title: isPressed1
            ? Text(
                'Factory 1',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: isTablet ? 40 : 30),
              )
            : isPressed2
                ? Text(
                    'Factory 2',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isTablet ? 40 : 30),
                  )
                : Text(
                    'Factory ??',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isTablet ? 40 : 30),
                  ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: isPressed2
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: screenSize.width * 0.95,
                        height: screenSize.height * 2 / 3,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(239, 239, 239, 239),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 5, // Increased spread radius
                              blurRadius: 15,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: screenSize.height * 0.02),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.warning,
                                      size: isTablet ? 30 : 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Factory unreachable, unable to add',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: isTablet ? 30 : 20,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: screenSize.height / 8,
                          width: screenSize.width / 3,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(16), // <-- Radius
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                isPressed1 = true;
                                isPressed2 = false;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.factory,
                                  size: isTablet ? 50 : 40,
                                ),
                                Text(
                                  'Factory 1',
                                  style:
                                      TextStyle(fontSize: isTablet ? 30 : 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height / 8,
                          width: screenSize.width / 3,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isPressed1 = false;
                                isPressed2 = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(16), // <-- Radius
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.factory,
                                  size: isTablet ? 50 : 40,
                                ),
                                Text(
                                  'Factory 2',
                                  style:
                                      TextStyle(fontSize: isTablet ? 30 : 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            : isPressed1
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            width: screenSize.width * 0.95,
                            height: screenSize.height * 2 / 3,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(239, 239, 239, 239),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 5, // Increased spread radius
                                  blurRadius: 15,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, left: 8.0, right: 8.0),
                                      child: SizedBox(
                                        width: screenSize.width * 0.9,
                                        height: screenSize.height / 8,
                                        child: Card(
                                            color: Colors.white,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 13.0),
                                                  child: Text(
                                                    'Pang',
                                                    style: TextStyle(
                                                        fontSize:
                                                            isTablet ? 35 : 25),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                        right: 10.0,
                                                        left: 10.0,
                                                      ),
                                                      child: Icon(
                                                        Icons.circle,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Text(
                                                      '+60123456789',
                                                      style: TextStyle(
                                                          fontSize: isTablet
                                                              ? 33
                                                              : 23),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, left: 8.0, right: 8.0),
                                      child: SizedBox(
                                        width: screenSize.width * 0.9,
                                        height: screenSize.height / 8,
                                        child: Card(
                                            color: Colors.white,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 13.0),
                                                  child: Text(
                                                    'Jason',
                                                    style: TextStyle(
                                                        fontSize:
                                                            isTablet ? 35 : 25),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                        right: 10.0,
                                                        left: 10.0,
                                                      ),
                                                      child: Icon(
                                                        Icons.circle,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Text(
                                                      '+60123457116',
                                                      style: TextStyle(
                                                          fontSize: isTablet
                                                              ? 33
                                                              : 23),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, left: 8.0, right: 8.0),
                                      child: SizedBox(
                                        width: screenSize.width * 0.9,
                                        height: screenSize.height / 8,
                                        child: Card(
                                            color: Colors.white,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 13.0),
                                                  child: Text(
                                                    'Ali',
                                                    style: TextStyle(
                                                        fontSize:
                                                            isTablet ? 35 : 25),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                        right: 10.0,
                                                        left: 10.0,
                                                      ),
                                                      child: Icon(
                                                        Icons.circle,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Text(
                                                      '+60125553727',
                                                      style: TextStyle(
                                                          fontSize: isTablet
                                                              ? 33
                                                              : 23),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AddContactPage(
                                            isPressed1: true,
                                            isPressed2: false,
                                          ),
                                        ),
                                      );
                                    },
                                    child: const Icon(Icons.add),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: screenSize.height / 8,
                              width: screenSize.width / 3,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(16), // <-- Radius
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isPressed1 = true;
                                    isPressed2 = false;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.factory,
                                      size: isTablet ? 50 : 40,
                                    ),
                                    Text(
                                      'Factory 1',
                                      style: TextStyle(
                                          fontSize: isTablet ? 30 : 20),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height / 8,
                              width: screenSize.width / 3,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    isPressed1 = false;
                                    isPressed2 = true;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(16), // <-- Radius
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.factory,
                                      size: isTablet ? 50 : 40,
                                    ),
                                    Text(
                                      'Factory 2',
                                      style: TextStyle(
                                          fontSize: isTablet ? 30 : 20),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                : const SizedBox(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: isTablet ? 22 : 12,
        unselectedFontSize: isTablet ? 22 : 12,
        items: [
          BottomNavigationBarItem(
            label: 'People',
            icon: Icon(Icons.person, size: isTablet ? 40 : 30),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home, size: isTablet ? 40 : 30),
          ),
          BottomNavigationBarItem(
            label: 'Notification',
            icon: Icon(Icons.notifications, size: isTablet ? 40 : 30),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          // this has changed
          setState(() {
            currentIndex = index;
          });
          _onTap();
        },
      ),
    );
  }
}
