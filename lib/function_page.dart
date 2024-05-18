import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lab5/notification_page.dart';
import 'package:lab5/profile_page.dart';

class FunctionPage extends StatefulWidget {
  const FunctionPage({super.key});

  @override
  State<FunctionPage> createState() => _FunctionPageState();
}

class _FunctionPageState extends State<FunctionPage> {
  int currentIndex = 1;
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
    final dateFormatter = DateFormat('yyyy-MM-dd');
    final timeFormatter = DateFormat('HH:mm:ss');
    final DateTime now = DateTime.now();
    final formattedDate = dateFormatter.format(now);
    final formattedTime = timeFormatter.format(now);

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
        child: currentIndex == 1 && isPressed1
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
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                '1549.7kw',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: isTablet ? 40 : 30),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images/steam_pressure_f1.jpeg',
                                    width: screenSize.width / 2.5,
                                    height: screenSize.height / 2.5,
                                    fit: BoxFit.contain,
                                  ),
                                  Image.asset(
                                    'images/steam_flow_f1.jpeg',
                                    width: screenSize.width / 2.5,
                                    height: screenSize.height / 2.5,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images/water_level_f1.jpeg',
                                    width: screenSize.width / 2.5,
                                    height: screenSize.height / 2.5,
                                    fit: BoxFit.contain,
                                  ),
                                  Image.asset(
                                    'images/power_frequency_f1.jpeg',
                                    width: screenSize.width / 2.5,
                                    height: screenSize.height / 2.5,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '$formattedDate $formattedTime',
                              style: TextStyle(fontSize: isTablet ? 30 : 20),
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
            : currentIndex == 1 && isPressed2
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
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.warning,
                                          size: isTablet ? 40 : 30.0),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'ERROR: Unreachable!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: isTablet ? 40 : 30),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'images/steam_pressure_f2.jpeg',
                                        width: screenSize.width / 2.5,
                                        height: screenSize.height / 2.5,
                                        fit: BoxFit.contain,
                                      ),
                                      Image.asset(
                                        'images/steam_flow_f2.jpeg',
                                        width: screenSize.width / 2.5,
                                        height: screenSize.height / 2.5,
                                        fit: BoxFit.contain,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'images/water_level_f2.jpeg',
                                        width: screenSize.width / 2.5,
                                        height: screenSize.height / 2.5,
                                        fit: BoxFit.contain,
                                      ),
                                      Image.asset(
                                        'images/power_frequency_f2.jpeg',
                                        width: screenSize.width / 2.5,
                                        height: screenSize.height / 2.5,
                                        fit: BoxFit.contain,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '--:--',
                                  style:
                                      TextStyle(fontSize: isTablet ? 30 : 20),
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
