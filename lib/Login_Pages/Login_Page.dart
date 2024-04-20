import 'package:cash/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class signup extends StatelessWidget {
  signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Form(
        child: Column(
          children: [
            Center(
              child: Image(image: AssetImage('images/Final.png')),
            ),
            Center(
              child: Text(
                'Cash and Credit',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0.h, bottom: 10.h),
                child: Text(
                  'Welcome back! 👋',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 0.0, bottom: 0.0),
                child: Text(
                  'Sign Up Now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: 310.0.w,
                height: 50.0.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 5.0.r,
                      spreadRadius: 1.0,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Name Here",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: 310.0.w,
                height: 50.0.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 5.0.r,
                      spreadRadius: 1.0,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Email Here",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: 310.0.w,
                height: 50.0.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 5.0,
                      spreadRadius: 1.0.r,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Entre Password Here",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 50.w),
                  child: Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Center(child: Text('Remember Me')),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 310,
              height: 50,
              color: Colors.white, // Set the background color of the Container
              child: ElevatedButton(
                onPressed: () {
                  // Do something when the button is pressed
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 254, 222,
                      90), // Set the background color of the ElevatedButton
                  foregroundColor: Color.fromARGB(255, 0, 74,
                      173), // Set the text color of the ElevatedButton
                  shape: StadiumBorder(),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                ),
                child: Text(
                  'Sign In',
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' Already have an account ??? ',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  SizedBox(
                      width: 16
                          .w), // Add some spacing between the Text and TextButton
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child: Text(
                      'Log in ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 74, 173),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: Text(
                  'Streamline your cash and carry store operations with ease using our software',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 74, 173),
                    fontSize: 15.sp,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
