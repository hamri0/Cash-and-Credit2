import 'package:cash/Purchase/Add_Purchase_Page.dart';
import 'package:cash/Purchase/Vendor_Page_List.dart';
import 'package:cash/sale/list11111.dart';
import 'package:flutter/material.dart';

class Purchase22 extends StatefulWidget {
  const Purchase22({super.key});

  @override
  State<Purchase22> createState() => _Purchase22State();
}

class _Purchase22State extends State<Purchase22> {
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
                                color: const Color.fromARGB(255, 0, 74, 173),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 21.0),
                            child: Text(
                              'Purchase Register',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40.0),
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
                                  'This Month Spent ',
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
                    'Current Purchase',
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
            color: Color.fromARGB(255, 229, 230, 231),
            padding: EdgeInsets.only(top: 8, left: 18, right: 18),
            child: ListView(
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {},
                  child: Card(
                    shape: RoundedRectangleBorder(
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
                            MaterialPageRoute(builder: (context) => listsale()),
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
                    shape: RoundedRectangleBorder(
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
                    shape: RoundedRectangleBorder(
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
                  child: Text(
                    'Export CSV File ',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 74, 173),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 74, 173),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Addpurchase()),
                    );
                  },
                  child: Text(
                    'Add Supplier ',
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

class Vendor extends StatefulWidget {
  const Vendor({super.key});

  @override
  State<Vendor> createState() => _VendorState();
}

class _VendorState extends State<Vendor> {
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
                                Icons.person_remove_outlined,
                                size: 30,
                                color: const Color.fromARGB(255, 0, 74, 173),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 21.0),
                            child: Text(
                              'Supplier ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 100.0),
                            child: Column(
                              children: [
                                Text(
                                  '12 ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Active Suppliers',
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
                    'Current Vendors',
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
            color: Color.fromARGB(255, 229, 230, 231),
            padding: EdgeInsets.only(top: 8, left: 18, right: 18),
            child: ListView(
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {},
                  child: Card(
                    shape: RoundedRectangleBorder(
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
                                builder: (context) => listvendor()),
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
                    shape: RoundedRectangleBorder(
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
                    shape: RoundedRectangleBorder(
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
                  child: Text(
                    'Export CSV File ',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 74, 173),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 74, 173),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          title: Text('Add Supplier '),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: " Supplier ",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "Phone Number",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: " Email Address",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "Address ",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                              TextField(
                                maxLines: 3,
                                decoration: InputDecoration(
                                  labelText: "Special Notes",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          actions: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 74, 173),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Save This Supplier',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    'Add Supplier ',
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
