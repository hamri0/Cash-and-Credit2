import 'package:cash/Accounts/Account_Page_Classes.dart';
import 'package:cash/Dashboard/Dashboard_Main_Page.dart';
import 'package:cash/Report/Report_Main_Page.dart';
import 'package:cash/inventory/Inventory_Main_Page.dart';
import 'package:cash/Purchase/Purchase_Main_Page.dart';
import 'package:cash/sale/sale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Account extends StatelessWidget {
  const Account({super.key});
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
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your on-pressed logic here
        },
        child: Icon(Icons.mic_none),
        backgroundColor: const Color.fromARGB(255, 0, 74, 173),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height *
                  0.06, // Adjust the height of the header
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(right: 250.0.w, left: 10.w),
                child: Image(
                  image: AssetImage('images/Final.png'),
                ),
              ),
            ),
            // ElevatedButton.icon(
            //   onPressed: () {},
            //   label: Text(
            //     'DASHBOARD',
            //     style: TextStyle(
            //       color: Colors.black,
            //     ),
            //   ),
            //   icon: Icon(Icons.dashboard,),
            // ),
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => dashboard()),
                        );
                      },
                      label: const Text('My Dashborad',
                          style: TextStyle(
                            color: Color.fromARGB(255, 63, 63, 70),
                            fontSize: 16,
                          )),
                      icon: const Icon(
                        Icons.dashboard_outlined,
                        color: Color.fromARGB(
                            255, 63, 63, 70), // Change the color of the icon
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'General',
                    style: TextStyle(
                      color: Color.fromARGB(255, 161, 161, 170),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => inventory()),
                            );
                          },
                          label: const Text(
                            'Inventory',
                            style: TextStyle(
                              color: Color.fromARGB(255, 63, 63, 70),
                              fontSize: 16,
                            ),
                          ),
                          icon: const Icon(
                            Icons.inventory_2_outlined,
                            color: Color.fromARGB(255, 63, 63, 70),
                            // Change the color of the icon
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8, right: 35),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => sale()),
                            );
                          },
                          label: const Text(
                            'Sale',
                            style: TextStyle(
                              color: Color.fromARGB(255, 63, 63, 70),
                              fontSize: 16,
                            ),
                          ),
                          icon: const Icon(
                            Icons.sell_outlined,
                            color: Color.fromARGB(255, 63, 63,
                                70), // Change the color of the icon
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => purchase()),
                            );
                          },
                          label: const Text(
                            'Purchase',
                            style: TextStyle(
                              color: Color.fromARGB(255, 63, 63, 70),
                              fontSize: 16,
                            ),
                          ),
                          icon: const Icon(
                            Icons.shopping_bag_outlined,
                            color: Color.fromARGB(255, 63, 63,
                                70), // Change the color of the icon
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Account()),
                            );
                          },
                          label: const Text(
                            'Accounts',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 74, 173),
                              fontSize: 16,
                            ),
                          ),
                          icon: const Icon(
                            Icons.account_balance_sharp,
                            color: const Color.fromARGB(255, 0, 74,
                                173), // Change the color of the icon
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8, right: 15),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => report()),
                            );
                          },
                          label: const Text(
                            'Reports',
                            style: TextStyle(
                              color: Color.fromARGB(255, 63, 63, 70),
                              fontSize: 16,
                            ),
                          ),
                          icon: const Icon(
                            Icons.bar_chart_outlined,
                            color: Color.fromARGB(255, 63, 63,
                                70), // Change the color of the icon
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'User',
                    style: TextStyle(
                      color: Color.fromARGB(255, 161, 161, 170),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                      onPressed: () {},
                      label: const Text(
                        'Settings',
                        style: TextStyle(
                          color: Color.fromARGB(255, 63, 63, 70),
                          fontSize: 16,
                        ),
                      ),
                      icon: const Icon(
                        Icons.settings_suggest_outlined,
                        color: Color.fromARGB(
                            255, 63, 63, 70), // Change the color of the icon
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 246, 247, 249),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 74, 173),
                ),
              ),
            ),
            // Add the previous code here
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    child: const TabBar(
                      indicatorColor: const Color.fromARGB(255, 0, 74, 173),
                      tabs: [
                        Tab(text: 'Chart of Accounts'),
                        Tab(text: ' Account Ledger'),
                        Tab(text: 'Opening Balance '),
                      ],
                    ),
                  ),
                  Container(
                    height: 750,
                    child: const TabBarView(
                      children: [
                        Accounts22(),
                        Ledger(),
                        Opening(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // set the background color of the body here
      // body:
      //     const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //   Padding(
      //     padding: EdgeInsets.all(10),
      //     child: Text(
      //       'Hey Shah - here\'s what\'s happening with your store today',
      //       style: TextStyle(fontSize: 16),
      //     ),
      //   ),
      //   Padding(
      //     padding: EdgeInsets.all(10),
      //     child: Text(
      //       'Dashboard',
      //       style: TextStyle(
      //         fontSize: 24,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.blue,
      //       ),
      //     ),
      //   ),
      // ]
      // ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> allData = [''];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
