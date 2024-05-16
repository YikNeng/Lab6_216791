import 'package:flutter/material.dart';

class AddContactPage extends StatefulWidget {
  final bool isPressed1;
  final bool isPressed2;

  const AddContactPage(
      {super.key, required this.isPressed1, required this.isPressed2});

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  bool isTablet = false;
  // ignore: prefer_final_fields
  TextEditingController _name1 = TextEditingController();
  // ignore: prefer_final_fields
  TextEditingController _phoneno1 = TextEditingController();
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
        title: Text(
          'Factory 1',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: isTablet ? 40 : 30),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: widget.isPressed1
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenSize.height / 50,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'Invitation',
                            style: TextStyle(
                              fontSize: isTablet ? 50 : 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Invite users',
                            style: TextStyle(fontSize: isTablet ? 30 : 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height / 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenSize.width * 0.05,
                          ),
                          child: Text(
                            'Owner\'s Name',
                            style: TextStyle(fontSize: isTablet ? 33 : 23),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: screenSize.width * 0.05,
                                right: screenSize.width * 0.05),
                            child: TextField(
                              controller: _name1,
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                hintStyle:
                                    TextStyle(fontSize: isTablet ? 32 : 22),
                                hintText: 'Type Here',
                                filled: true,
                                fillColor: Colors.white,
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.08,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenSize.width * 0.05,
                          ),
                          child: Text(
                            'Owner\'s Phone Number',
                            style: TextStyle(fontSize: isTablet ? 33 : 23),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset(
                                'images/malaysia_flag.png',
                                width: 50,
                              ),
                            ),
                            Text(
                              '+60',
                              style: TextStyle(fontSize: isTablet ? 33 : 23),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0,
                                    right: 20.0,
                                    top: 8.0,
                                    bottom: 8.0),
                                child: TextField(
                                  controller: _phoneno1,
                                  decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.08,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: isTablet ? 30 : 20),
                        ),
                      ),
                    ),
                  ],
                )
              : const SizedBox()),
    );
  }
}
