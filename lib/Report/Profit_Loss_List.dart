import 'package:cash/Accounts/Account_Main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class listprofit extends StatelessWidget {
  const listprofit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu_open_rounded),
            onPressed: () {
              Scaffold.of(context).openDrawer();
              // Add search functionality here
            },
          );
        }),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {
              showSearch(context: context, delegate: CustomSearch());
              // Add search functionality here
            },
          ),
          IconButton(
            icon: const Icon(Icons.markunread_outlined),
            onPressed: () {
              // Add mail functionality here
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // Add notification functionality here
            },
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 229, 230, 231),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Report',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 74, 173),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Container(
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
                                    Icons.circle,
                                    size: 30,
                                    color:
                                        const Color.fromARGB(255, 0, 74, 173),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 70.0),
                                child: Text(
                                  'Shah Zaman',
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
                                      '1400',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      'Opening Balance ',
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
              height: 400,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('Profit Loss',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text('For the Year 2022 ',
                      style: TextStyle(color: Colors.black, fontSize: 17)),
                  Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text('Accounts',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 80.0),
                          child: Text('Type',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text('Amount',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text('Revenue',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 120.0),
                          child: Text('Cr',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 135, 253, 0),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Text('12,00',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text('Expense',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 120.0),
                          child: Text('Dr',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Text('12,00',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text('Profit',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 74, 173),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 144.0),
                          child: Text('Cr',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 135, 253, 0),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Text('12,00',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 74, 173),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
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
      ),
    );
  }
}
