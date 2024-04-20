import 'package:cash/Login_Pages/New_Password.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class pin extends StatelessWidget {
  const pin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Form(
        child: Column(
          children: [
            const Center(
              child: Image(image: AssetImage('images/Final.png')),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 26),
                child: Text(
                  'Cash and Credit',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
                child: Text(
                  'Enter Pin Code Here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 310.0,
                    height: 50.0,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      onChanged: (value) {
                        print(value);
                      },
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                width: 310,
                height: 50,
                color:
                    Colors.white, // Set the background color of the Container
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => newpass()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 254, 222,
                        90), // Set the background color of the ElevatedButton
                    foregroundColor: const Color.fromARGB(255, 0, 74,
                        173), // Set the text color of the ElevatedButton
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                  ),
                  child: const Text('Verify'),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 60.0),
                    child: Text(
                      "Didn't Receive Pincode?? ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                      width:
                          16), // Add some spacing between the Text and TextButton
                  TextButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(top: 60.0),
                      child: Text(
                        ' Resend again',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 74, 173),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Get Help',
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Term&Conditions',
                  style: TextStyle(color: Colors.grey)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Privacy Policy',
                  style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
