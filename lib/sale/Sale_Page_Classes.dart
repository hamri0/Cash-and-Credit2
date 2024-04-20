import 'package:cash/sale/Add_Sale_Page.dart';
import 'package:cash/sale/Add_Customer_Page.dart';
import 'package:cash/sale/list11111.dart';
import 'package:cash/sale/list222.dart';
import 'package:flutter/material.dart';

class SalesRegister extends StatefulWidget {
  const SalesRegister({super.key});

  @override
  State<SalesRegister> createState() => _SalesRegisterState();
}

class _SalesRegisterState extends State<SalesRegister> {
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
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 0.0),
                              child: Icon(
                                Icons.grid_view,
                                size: 30,
                                color: Color.fromARGB(255, 0, 74, 173),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 21.0),
                            child: Text(
                              'Sales Register',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 55.0),
                            child: Column(
                              children: [
                                Text(
                                  '124,132 ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'This Month Revenue ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Text(
                          //   'Total Category',
                          //   style: TextStyle(
                          //     color: Colors.black,
                          //     fontSize: 18,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                    height:
                        10), // Add some space between the container and the text
                const Padding(
                  padding: EdgeInsets.only(right: 185.0),
                  child: Text(
                    'Current Customers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: const Color.fromARGB(255, 229, 230, 231),
            padding: const EdgeInsets.only(top: 8, left: 18, right: 18),
            child: ListView(
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {},
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: ListTile(
                      title: const Text('Shah'),
                      leading: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.person_rounded),
                      ),
                      trailing: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const listsale()),
                          );
                        },
                        child: const Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: ListTile(
                      title: const Text('Ali'),
                      leading: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.person_rounded),
                      ),
                      trailing: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: ListTile(
                      title: const Text('fizan'),
                      leading: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.person_rounded),
                      ),
                      trailing: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    // Add your onPressed logic for the first button here
                  },
                  child: const Text(
                    'Export CSV File ',
                    style: TextStyle(color: Color.fromARGB(255, 0, 74, 173)),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 74, 173)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Addsale()),
                    );
                  },
                  child: const Text(
                    'Add Sale ',
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

class CustomerList extends StatefulWidget {
  const CustomerList({super.key});

  @override
  State<CustomerList> createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
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
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 0.0),
                              child: Icon(
                                Icons.person_add_alt,
                                size: 30,
                                color: Color.fromARGB(255, 0, 74, 173),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 21.0),
                            child: Text(
                              'Customer',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 80.0),
                            child: Column(
                              children: [
                                Text(
                                  '1,352 ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Current Customers',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Text(
                          //   'Total Category',
                          //   style: TextStyle(
                          //     color: Colors.black,
                          //     fontSize: 18,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                    height:
                        10), // Add some space between the container and the text
                const Padding(
                  padding: EdgeInsets.only(right: 185.0),
                  child: Text(
                    'Current Customers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: const Color.fromARGB(255, 229, 230, 231),
            padding: const EdgeInsets.only(top: 8, left: 18, right: 18),
            child: ListView(
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {},
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: ListTile(
                      title: const Text('Shah'),
                      leading: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.person_rounded),
                      ),
                      trailing: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const listcos()),
                          );
                        },
                        child: const Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: ListTile(
                      title: const Text('Ali'),
                      leading: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.person_rounded),
                      ),
                      trailing: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: ListTile(
                      title: const Text('fizan'),
                      leading: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.person_rounded),
                      ),
                      trailing: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    // Add your onPressed logic for the first button here
                  },
                  child: const Text(
                    'Export CSV File ',
                    style: TextStyle(color: Color.fromARGB(255, 0, 74, 173)),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 74, 173)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Addcustom()),
                    );
                  },
                  child: const Text(
                    'Add Customer ',
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
