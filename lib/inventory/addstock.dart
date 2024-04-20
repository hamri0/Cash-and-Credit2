// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Addstock extends StatelessWidget {
  const Addstock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Add Stock',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 74, 173),
                ),
              ),
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(10), // Add this line
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
                          height: 500,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text('Add New Stock',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 24)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 10.0, left: 20, right: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Supplier ',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 10.0, left: 20, right: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Duration / Type',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 10.0, left: 20, right: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Code',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 10.0, left: 20, right: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Quantity',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 10.0, left: 20, right: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Purchased Price',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 10.0, left: 20, right: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Selling Price',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, bottom: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                // Add your onPressed logic for the first button here
                              },
                              child: const Text(
                                'Cancel ',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 74, 173),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 0, 74, 173),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Add ',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
            // Add the previous code here
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
