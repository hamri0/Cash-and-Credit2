import 'package:cash/Login_Pages/Login_Page.dart';
import 'package:cash/Login_Pages/Recover_Your_Password.dart';
import 'package:cash/Welcome_Page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cash and Credit',
        home: MyHomePage(),
      ),
      designSize: const Size(390, 844),
    );
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Cash and Credit',
    //   home: MyHomePage(),
    // );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const Center(
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
                  'Sign in to your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Padding(
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
              child: Container(
                width: 335.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text('Remember Me'),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => recover()),
                        );
                      },
                      child: Text(
                        'Recover Password',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 74, 173),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 310.w,
              height: 50.h,
              color: Colors.white, // Set the background color of the Container
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => welcome()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 254, 222,
                      90), // Set the background color of the ElevatedButton
                  foregroundColor: const Color.fromARGB(255, 0, 74, 173),
                  // Set the text color of the ElevatedButton
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: const Text('Sign In'),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account yet ?',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  SizedBox(
                      width: 16
                          .w), // Add some spacing between the Text and TextButton
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signup()),
                      );
                    },
                    child: const Text(
                      'Sign Up',
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
                    color: Color.fromARGB(255, 0, 74, 173),
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
