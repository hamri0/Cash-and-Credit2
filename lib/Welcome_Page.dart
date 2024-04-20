import 'package:cash/Dashboard/Dashboard_Main_Page.dart';
import 'package:cash/accounts/Account_Main_page.dart';
import 'package:cash/inventory/Inventory_Main_Page.dart';
import 'package:cash/Purchase/Purchase_Main_Page.dart';
import 'package:cash/Report/Report_Main_Page.dart';
import 'package:cash/sale/sale.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              child: const Padding(
                padding: EdgeInsets.only(right: 250.0, left: 10),
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
                          MaterialPageRoute(
                              builder: (context) => const dashboard()),
                        );
                      },
                      label: Text(
                        'My Dashborad',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                      ),
                      icon: const Icon(
                        Icons.dashboard_outlined,
                        color: Colors.black, // Change the color of the icon
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  const Text(
                    'General',
                    style: TextStyle(
                      color: Color.fromARGB(255, 161, 161, 170),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const inventory()),
                            );
                          },
                          label: Text(
                            'Inventory',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 63, 63, 70),
                              fontSize: 16.sp,
                            ),
                          ),
                          icon: const Icon(
                            Icons.inventory_2_outlined,
                            color: Color.fromARGB(255, 63, 63,
                                70), // Change the color of the icon
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 8.0.h, bottom: 8.h, right: 35.w),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const sale()),
                            );
                          },
                          label: Text(
                            'Sale',
                            style: TextStyle(
                              color: Color.fromARGB(255, 63, 63, 70),
                              fontSize: 16.sp,
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
                                  builder: (context) => const purchase()),
                            );
                          },
                          label: Text(
                            'Purchase',
                            style: TextStyle(
                              color: Color.fromARGB(255, 63, 63, 70),
                              fontSize: 16.sp,
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
                                  builder: (context) => const Account()),
                            );
                          },
                          label: Text(
                            'Accounts',
                            style: TextStyle(
                              color: Color.fromARGB(255, 63, 63, 70),
                              fontSize: 16.sp,
                            ),
                          ),
                          icon: const Icon(
                            Icons.account_balance_sharp,
                            color: Color.fromARGB(255, 63, 63,
                                70), // Change the color of the icon
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
                              MaterialPageRoute(
                                  builder: (context) => const report()),
                            );
                          },
                          label: Text(
                            'Reports',
                            style: TextStyle(
                              color: Color.fromARGB(255, 63, 63, 70),
                              fontSize: 16.sp,
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
                  SizedBox(height: 16.h),
                  const Text(
                    'User',
                    style: TextStyle(
                      color: Color.fromARGB(255, 161, 161, 170),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        'Settings',
                        style: TextStyle(
                          color: Color.fromARGB(255, 63, 63, 70),
                          fontSize: 16.sp,
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

      backgroundColor: const Color.fromARGB(
          255, 229, 230, 231), // set the background color of the body here
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Projects',
                style: TextStyle(
                  fontSize: 24.sp,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8, right: 8, left: 20),
                    child: Center(
                      child: Container(
                        height: 100.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1.r,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Hello',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 100.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1.r,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Hello',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8, right: 8, left: 20),
                    child: Center(
                      child: Container(
                        height: 100.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1.r,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Hello',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 100.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1.r,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Hello',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8, right: 8, left: 20),
                    child: Center(
                      child: Container(
                        height: 100.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1.r,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Hello',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 100.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1.r,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Hello',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8, right: 8, left: 20),
                    child: Center(
                      child: Container(
                        height: 100.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1.r,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Hello',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 100.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1.r,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Hello',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
