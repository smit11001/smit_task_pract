import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text('APP NAME',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),
        ),
        actions: [
          Text('TOTAL:',
          style: TextStyle(
            color: Colors.red,
            fontSize: 20
          ),
          )
        ],
      ),
      drawer:  SizedBox(
        width: 112,
        child: Drawer(
          // backgroundColor: Colors.white,
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 100),
            child: Column(
              children: [
                ListTile(
                  title: Text('All'),
                ),
                ListTile(
                  title: Text('jewelery'),
                ),
                ListTile(
                  title: Text('Laptops'),
                ),
                ListTile(
                  title: Text('Smart phones'),
                ),
                ListTile(
                  title: Text("men's clothing"),
                ),
                ListTile(
                  title: Text("women's clothing"),
                ),
                ],
            ),
          ),
        ),
      ),
      body: C
    );
  }
}
