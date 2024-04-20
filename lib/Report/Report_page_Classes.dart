import 'package:cash/Report/Balance_Sheet_List.dart';
import 'package:cash/Report/Profit_Loss_List.dart';
import 'package:cash/Report/Trial_Balance_List.dart';
import 'package:flutter/material.dart';

class Profit extends StatefulWidget {
  const Profit({super.key});

  @override
  State<Profit> createState() => _ProfitState();
}

class _ProfitState extends State<Profit> {
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
                            padding: EdgeInsets.only(right: 70.0),
                            child: Text(
                              'Profit Loss',
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
                        MaterialPageRoute(builder: (context) => listprofit()),
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

class Trial extends StatefulWidget {
  const Trial({super.key});

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {
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
                            padding: EdgeInsets.only(right: 70.0),
                            child: Text(
                              'Profit Loss',
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
                        MaterialPageRoute(builder: (context) => list22()),
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

class Sheet extends StatefulWidget {
  const Sheet({super.key});

  @override
  State<Sheet> createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
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
                            padding: EdgeInsets.only(right: 70.0),
                            child: Text(
                              'Profit Loss',
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
                        MaterialPageRoute(builder: (context) => list33()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .blue, // Set the background color of the ElevatedButton
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
                      style: TextStyle(color: Colors.blue),
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
