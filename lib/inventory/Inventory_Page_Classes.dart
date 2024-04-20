import 'package:cash/inventory/addproduct.dart';
import 'package:cash/inventory/addstock.dart';
import 'package:cash/inventory/list.dart';
import 'package:cash/inventory/list2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Catagories extends StatefulWidget {
  const Catagories({super.key});

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 230, 231),
      body: Column(
        children: [
          Container(
            height: 100.h,
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
                                Icons.arrow_upward_outlined,
                                size: 30,
                                color: const Color.fromARGB(255, 0, 74, 173),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 21.0),
                            child: Text(
                              'Category',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 21.0),
                            child: Text(
                              'Total Categories 5 ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
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
                  padding: EdgeInsets.only(right: 250.0),
                  child: Text(
                    'Technolgy',
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
              padding: const EdgeInsets.only(top: 8, left: 30, right: 30),
              child: ListView(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: ListTile(
                        title: const Text('handfree'),
                        leading: InkWell(
                          onTap: () {},
                          child: const Icon(Icons.menu),
                        ),
                        trailing: InkWell(
                          onTap: () {},
                          child: const Icon(Icons.delete_outlined),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: ListTile(
                        title: const Text('mobile'),
                        leading: InkWell(
                          onTap: () {},
                          child: const Icon(Icons.menu),
                        ),
                        trailing: InkWell(
                          onTap: () {},
                          child: const Icon(Icons.delete_outlined),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: ListTile(
                        title: const Text('laptop'),
                        leading: InkWell(
                          onTap: () {},
                          child: const Icon(Icons.menu),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: const Text(
                                      'Do you really want to unfavorite all these items?'),
                                  actions: [
                                    TextButton(
                                      child: const Text('Cancel'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .blue, // Set the background color here
                                      ),
                                      child: TextButton(
                                        child: const Text('Yes'),
                                        onPressed: () {
                                          // Add your onPressed logic here
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: const Icon(Icons.delete_outlined),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          title: const Text('Edit Category'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  labelText: "Category Name",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              TextField(
                                maxLines: 3,
                                decoration: InputDecoration(
                                  labelText: "Description",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          actions: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('CANCEL'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Update'),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text(
                    'Add Category ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

// Scaffold(
//   backgroundColor: Colors.green, // Change this to the desired color
//   appBar: AppBar(
//     title: Text('My App'),
//   ),
//   body: // Your body widgets go here
// );
  }
}

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
                                Icons.arrow_upward_outlined,
                                size: 30,
                                color: const Color.fromARGB(255, 0, 74, 173),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 21.0),
                            child: Text(
                              'Products',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 21.0),
                            child: Text(
                              'Active Products 5 ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
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
                    'Available Products',
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Addproduct()),
                    );
                  },
                  child: const Text(
                    'Add Product ',
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

class Stocks extends StatefulWidget {
  const Stocks({super.key});

  @override
  State<Stocks> createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
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
                                Icons.trip_origin_sharp,
                                size: 30,
                                color: const Color.fromARGB(255, 0, 74, 173),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 21.0),
                            child: Text(
                              'Current Stock',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 21.0),
                            child: Text(
                              'Total Products 5 ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
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
                    'Available Products',
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
                                builder: (context) => const list2invent()),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Addstock()),
                    );
                  },
                  child: const Text(
                    'Add Stock ',
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
