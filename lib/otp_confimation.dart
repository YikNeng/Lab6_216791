import 'package:flutter/material.dart';
import 'package:lab5/function_page.dart';

class OtpConfirmation extends StatefulWidget {
  const OtpConfirmation({super.key});

  @override
  State<OtpConfirmation> createState() => _OtpConfirmationState();
}

class _OtpConfirmationState extends State<OtpConfirmation> {
  bool isTablet = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var shortestSide = screenSize.shortestSide;

    if (shortestSide >= 800) {
      isTablet = true;
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'images/UPM_logo.jpg',
              width: isTablet ? 350 : 200.0,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: screenSize.width * 0.1, bottom: 10),
              child: Text(
                'Welcome!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: isTablet ? 55 : 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    height: screenSize.height * 0.55,
                    width: screenSize.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 20),
                                child: Text(
                                  'Enter the activation code you\nreceived via SMS.',
                                  style: TextStyle(
                                    fontSize: isTablet ? 33 : 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Icon(
                                  Icons.info_outline,
                                  size: isTablet ? 45 : 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              right: 40.0,
                            ),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: 'OTP',
                                hintStyle:
                                    TextStyle(fontSize: isTablet ? 32 : 18),
                                filled: true,
                                fillColor: Colors.white,
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 50.0,
                              ),
                              child: Text(
                                '0/6',
                                style: TextStyle(fontSize: isTablet ? 27 : 14),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Didn\'t Receive? ',
                              style: TextStyle(fontSize: isTablet ? 27 : 14),
                            ),
                            Text(
                              'Tap Here',
                              style: TextStyle(
                                  fontSize: isTablet ? 27 : 14,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            key: const Key("activate"),
                            child: Text(
                              'Activate',
                              style: TextStyle(fontSize: isTablet ? 30 : 15),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const FunctionPage(),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Disclaimer | Privacy Statement',
                          style: TextStyle(
                              fontSize: isTablet ? 27 : 14,
                              decoration: TextDecoration.underline,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                        'Copyright UPM & Kejuruteraan Minyak Sawit\nCCS Sdn. Bhd.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: isTablet ? 27 : 14,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
