import 'package:flutter/material.dart';
import 'package:lab5/otp_confimation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountActivationPage(),
    );
  }
}

class AccountActivationPage extends StatefulWidget {
  const AccountActivationPage({super.key});

  @override
  State<AccountActivationPage> createState() => _AccountActivationPageState();
}

class _AccountActivationPageState extends State<AccountActivationPage> {
  bool? value1 = false;
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
                      color: const Color.fromARGB(255, 226, 187, 184),
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
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                'Enter your mobile number to\nactivate your account.',
                                style: TextStyle(
                                  fontSize: isTablet ? 33 : 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Icon(
                                Icons.info_outline,
                                size: isTablet ? 45 : 30,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenSize.height / 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset(
                                'images/malaysia_flag.png',
                                width: isTablet ? 100 : 50,
                              ),
                            ),
                            Text(
                              '+60',
                              style: TextStyle(fontSize: isTablet ? 33 : 18),
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15.0,
                                    right: 20.0,
                                    top: 8.0,
                                    bottom: 8.0),
                                child: TextField(
                                  key: Key("mobile number"),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: value1,
                              onChanged: (bool? value) {
                                setState(() {
                                  value1 = value;
                                });
                              },
                            ),
                            Text(
                              'I agree to the terms & conditions.',
                              style: TextStyle(fontSize: isTablet ? 29 : 16),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ElevatedButton(
                              key: const Key("get OTP button"),
                              child: Text(
                                'Get Activation Code',
                                style: TextStyle(fontSize: isTablet ? 30 : 15),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OtpConfirmation()));
                              }),
                        )
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
