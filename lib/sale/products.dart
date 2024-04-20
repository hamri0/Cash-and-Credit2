import 'package:cash/inventory/list.dart';
import 'package:flutter/material.dart';

class Products69 extends StatelessWidget {
  const Products69({super.key});

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
      body: Column(
        children: [
          Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
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
                                        color: const Color.fromARGB(
                                            255, 0, 74, 173),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 21.0),
                                    child: Text(
                                      'Shah',
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
                                          '7',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          'Total Products ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 40.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          '120',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          'Total Bill ',
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
                      title: const Text('handfree'),
                      leading: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.headphones),
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
                      title: const Text('Sugar'),
                      leading: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.fastfood_outlined),
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
                      title: const Text('Macbook Air 2013'),
                      leading: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.laptop_chromebook),
                      ),
                      trailing: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const listinvent()),
                          );
                        },
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
                  child: const Text(
                    'Cancel ',
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
