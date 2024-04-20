import 'package:flutter/material.dart';

class Addcustomer22 extends StatefulWidget {
  const Addcustomer22({super.key});

  @override
  State<Addcustomer22> createState() => _Addcustomer22State();
}

class _Addcustomer22State extends State<Addcustomer22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 230, 231),
      body: Column(
        children: [
          Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 330,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(right: 21.0),
                            child: Text(
                              'Add Customer',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                    height:
                        10), // Add some space between the container and the text
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 8,
                  offset: const Offset(2, 2),
                ),
              ],
            ),
            width: 340,
            height: 250,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Customer Detail ',
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Customer Name ',
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Address ',
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 55.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    // Add your onPressed logic for the first button here
                  },
                  child: Text(
                    'Cancel ',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 74, 173),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 74, 173),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Save ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
