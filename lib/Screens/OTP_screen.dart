import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/recovery_screen.dart';

class OTPscreen extends StatelessWidget {
  const OTPscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "OTP",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Please enter your number address.You will receive a link to create or set a new password via number",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Recoveryscreen(),
                    ));
              },
              child: Text(
                "Send Code",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
                backgroundColor: Color(0xEFEF6969),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
