import 'package:flutter/material.dart';
import 'package:lab5/function_page.dart';
import 'package:lab5/profile_page.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int currentIndex = 2;
  bool isPressed1 = true;
  bool isPressed2 = false;
  bool isTablet = false;

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  String text1 = '';
  String text2 = '';
  String text3 = '';
  String text4 = '';

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    super.dispose();
  }

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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, left: 20.0, right: 10),
                                        child: Text(
                                          'Minimum Threshold',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: isTablet ? 33 : 23,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.info_outline,
                                        size: isTablet ? 45 : 35,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.edit,
                                          size: isTablet ? 40 : 30,
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Steam Pressure',
                                              style: TextStyle(
                                                  fontSize: isTablet ? 35 : 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              height: screenSize.height / 16,
                                              width: screenSize.width / 4,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  const Expanded(
                                                    child: Text(
                                                      '--',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ),
                                                  const VerticalDivider(
                                                    width: 20,
                                                    thickness: 1,
                                                    indent: 0,
                                                    endIndent: 0,
                                                    color: Colors.black,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 8.0),
                                                    child: Text(
                                                      'bar',
                                                      style: TextStyle(
                                                          fontSize: isTablet
                                                              ? 35
                                                              : 25),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Steam Flow',
                                              style: TextStyle(
                                                  fontSize: isTablet ? 35 : 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              height: screenSize.height / 16,
                                              width: screenSize.width / 4,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  const Expanded(
                                                    child: Text(
                                                      '--',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ),
                                                  const VerticalDivider(
                                                    width: 20,
                                                    thickness: 1,
                                                    indent: 0,
                                                    endIndent: 0,
                                                    color: Colors.black,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 8.0),
                                                    child: Text(
                                                      'T/H',
                                                      style: TextStyle(
                                                          fontSize: isTablet
                                                              ? 35
                                                              : 25),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Water Level',
                                              style: TextStyle(
                                                  fontSize: isTablet ? 35 : 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              height: screenSize.height / 16,
                                              width: screenSize.width / 4,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  const Expanded(
                                                    child: Text(
                                                      '--',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ),
                                                  const VerticalDivider(
                                                    width: 20,
                                                    thickness: 1,
                                                    indent: 0,
                                                    endIndent: 0,
                                                    color: Colors.black,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 8.0),
                                                    child: Text(
                                                      '%',
                                                      style: TextStyle(
                                                          fontSize: isTablet
                                                              ? 35
                                                              : 25),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Power Frequency',
                                              style: TextStyle(
                                                  fontSize: isTablet ? 35 : 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              height: screenSize.height / 16,
                                              width: screenSize.width / 4,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  const Expanded(
                                                    child: Text(
                                                      '--',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ),
                                                  const VerticalDivider(
                                                    width: 20,
                                                    thickness: 1,
                                                    indent: 0,
                                                    endIndent: 0,
                                                    color: Colors.black,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 8.0),
                                                    child: Text(
                                                      'Hz',
                                                      style: TextStyle(
                                                          fontSize: isTablet
                                                              ? 35
                                                              : 25),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
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
                                      'Factory unreachable, unable to edit',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0,
                                                left: 20.0,
                                                right: 10),
                                            child: Text(
                                              'Minimum Threshold',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: isTablet ? 33 : 23,
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.info_outline,
                                            size: isTablet ? 45 : 35,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.edit,
                                              size: isTablet ? 40 : 30,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  'Steam Pressure',
                                                  style: TextStyle(
                                                      fontSize:
                                                          isTablet ? 35 : 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                  height:
                                                      screenSize.height / 16,
                                                  width: screenSize.width / 4,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  bottom: 8.0),
                                                          child: TextField(
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontSize: isTablet
                                                                  ? 35
                                                                  : 25,
                                                            ),
                                                            decoration:
                                                                const InputDecoration(
                                                                    border:
                                                                        InputBorder
                                                                            .none),
                                                            controller:
                                                                controller1,
                                                            onSubmitted:
                                                                (String value) {
                                                              setState(() {
                                                                text1 =
                                                                    controller1
                                                                        .text;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      const VerticalDivider(
                                                        width: 20,
                                                        thickness: 1,
                                                        indent: 0,
                                                        endIndent: 0,
                                                        color: Colors.black,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 8.0),
                                                        child: Text(
                                                          'bar',
                                                          style: TextStyle(
                                                            fontSize: isTablet
                                                                ? 35
                                                                : 25,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Steam Flow',
                                                  style: TextStyle(
                                                      fontSize:
                                                          isTablet ? 35 : 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                  height:
                                                      screenSize.height / 16,
                                                  width: screenSize.width / 4,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  bottom: 8.0),
                                                          child: TextField(
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontSize:
                                                                    isTablet
                                                                        ? 35
                                                                        : 25),
                                                            decoration:
                                                                const InputDecoration(
                                                                    border:
                                                                        InputBorder
                                                                            .none),
                                                            controller:
                                                                controller2,
                                                            onSubmitted:
                                                                (String value) {
                                                              setState(() {
                                                                text2 =
                                                                    controller2
                                                                        .text;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      const VerticalDivider(
                                                        width: 20,
                                                        thickness: 1,
                                                        indent: 0,
                                                        endIndent: 0,
                                                        color: Colors.black,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 8.0),
                                                        child: Text(
                                                          'T/H',
                                                          style: TextStyle(
                                                              fontSize: isTablet
                                                                  ? 35
                                                                  : 25),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  'Water Level',
                                                  style: TextStyle(
                                                      fontSize:
                                                          isTablet ? 35 : 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                  height:
                                                      screenSize.height / 16,
                                                  width: screenSize.width / 4,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  bottom: 8.0),
                                                          child: TextField(
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontSize:
                                                                    isTablet
                                                                        ? 35
                                                                        : 25),
                                                            decoration:
                                                                const InputDecoration(
                                                                    border:
                                                                        InputBorder
                                                                            .none),
                                                            controller:
                                                                controller3,
                                                            onSubmitted:
                                                                (String value) {
                                                              setState(() {
                                                                text3 =
                                                                    controller3
                                                                        .text;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      const VerticalDivider(
                                                        width: 20,
                                                        thickness: 1,
                                                        indent: 0,
                                                        endIndent: 0,
                                                        color: Colors.black,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 8.0),
                                                        child: Text(
                                                          '%',
                                                          style: TextStyle(
                                                              fontSize: isTablet
                                                                  ? 35
                                                                  : 25),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Power Frequency',
                                                  style: TextStyle(
                                                      fontSize:
                                                          isTablet ? 35 : 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                  height:
                                                      screenSize.height / 16,
                                                  width: screenSize.width / 4,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  bottom: 8.0),
                                                          child: TextField(
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontSize:
                                                                    isTablet
                                                                        ? 35
                                                                        : 25),
                                                            decoration:
                                                                const InputDecoration(
                                                                    border:
                                                                        InputBorder
                                                                            .none),
                                                            controller:
                                                                controller4,
                                                            onSubmitted:
                                                                (String value) {
                                                              setState(() {
                                                                text4 =
                                                                    controller4
                                                                        .text;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      const VerticalDivider(
                                                        width: 20,
                                                        thickness: 1,
                                                        indent: 0,
                                                        endIndent: 0,
                                                        color: Colors.black,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 8.0),
                                                        child: Text(
                                                          'Hz',
                                                          style: TextStyle(
                                                              fontSize: isTablet
                                                                  ? 35
                                                                  : 25),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
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
