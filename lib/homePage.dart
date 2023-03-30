import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.sort),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZzqxmyIqMjuRsqITI-ZlwTifOq61p1yW1Rw&usqp=CAU0',
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {}, child: Text('Featured')),
              TextButton(onPressed: () {}, child: Text('Latest')),
              TextButton(onPressed: () {}, child: Text('Trending'))
            ],
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'second');
            },
            leading: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp0M0o5fJ9G1NRw7FUIdztNs3tJPMrz7hALw&usqp=CAU',
              height: 50,
            ),
            title: Text(
              'Getting my first\nUI/UX Desing\nInternship',
              style: TextStyle(fontSize: 25),
            ),
            subtitle: Text(
              'Jan 12, 18 min read',
              style: TextStyle(fontSize: 25),
            ),
          ),
          ListTile(
            leading: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYqUPvh0SrvoyPjUuB5vP3hcd7S9w9E509_A&usqp=CAU',
              height: 90,
            ),
            title: Text(
              'The Worst career\nMistake Junior\nUx Designers\nMake',
              style: TextStyle(fontSize: 25),
            ),
            subtitle: Text(
              'Jan 10, 4 min read',
              style: TextStyle(fontSize: 25),
            ),
          ),
          ListTile(
            leading: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlqMOIvlO6vmRMkTdTZCS-ZMTxEwEV-cLGuA&usqp=CAU',
              height: 80,
            ),
            title: Text(
              'You are not Lazy\nBored or \nunmotivated',
              style: TextStyle(fontSize: 25),
            ),
            subtitle: Text(
              'Jan 10, 4 min read',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
