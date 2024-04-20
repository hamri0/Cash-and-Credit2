import 'package:cash/Accounts/Opening_Balance_List.dart';
import 'package:cash/Accounts/Transaction_Detail.dart';
import 'package:cash/Accounts/Account_Detail.dart';
import 'package:flutter/material.dart';

class Accounts22 extends StatefulWidget {
  const Accounts22({super.key});

  @override
  State<Accounts22> createState() => _Accounts22State();
}

class _Accounts22State extends State<Accounts22> {
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
                                Icons.arrow_upward,
                                size: 30,
                                color: const Color.fromARGB(255, 0, 74, 173),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 21.0),
                            child: Text(
                              'Chart of Accounts',
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
                                  '70',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Total Accounts',
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
                    'Current Accounts',
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
                                builder: (context) => listacc692()),
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
                          title: Text('Add Account  '),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "Acc. Name ",
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
                                    labelText: " Acc. Number ",
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
                                    labelText: "Account Type ",
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
                                  labelText: "Notes",
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
                                    'Create New Account',
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
                    'Add Accounts ',
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

class Ledger extends StatefulWidget {
  const Ledger({super.key});

  @override
  State<Ledger> createState() => _LedgerState();
}

class _LedgerState extends State<Ledger> {
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
                              'Account Ledger',
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
                                  '270',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Total Transacions ',
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
                    'Current Accounts',
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
                                builder: (context) => listacc69()),
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
                          title: Text(' Add Transection  '),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "Acc. Name ",
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
                                    labelText: " Acc. Number ",
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
                                    labelText: " Transection Type ",
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
                                    labelText: "Amount ",
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
                                  labelText: "Notes",
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
                                    'Update Ledger',
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
                    'Add Accounts ',
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

class Opening extends StatefulWidget {
  const Opening({super.key});

  @override
  State<Opening> createState() => _OpeningState();
}

class _OpeningState extends State<Opening> {
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
                              'Opening Balance',
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
                                  '14',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Total Accounts ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 330,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(
                          2100,
                        ));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Select Date',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Icon(Icons.calendar_today),
                      SizedBox(width: 2),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: ElevatedButton(
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(
                            2100,
                          ));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 2),
                        Text(
                          'Select Date',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.calendar_today,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => list333()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 74,
                          173), // Set the background color of the ElevatedButton
                      foregroundColor: Colors
                          .white, // Set the text color of the ElevatedButton
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 12),
                    ),
                    child: const Text('Search'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: OutlinedButton(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
