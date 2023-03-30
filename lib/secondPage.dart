import 'package:flipcard/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  'https://img.freepik.com/free-vector/cute-astronaut-holding-phone-with-map-location-cartoon-vector-icon-illustration-science-technology_138676-5940.jpg?w=2000',
                ),
                fit: BoxFit.fill)),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                Icon(Icons.sort)
              ],
            ),
          ),
          SizedBox(
            height: 550,
          ),
          Card(
            child: Text(
              '''The trip home alsooo included Japanese astronaut Koichi Wakata, Russian cosmonaut Anna Kikina, and NASAs Josh Cassada.
—Brenton Blanchet, Peoplemag, 12 Mar. 2023
Ready to climb on board the Crew Dragon Endurance are NASA astronauts Nicole Mann and Josh Cassada as well as Japan Aerospace Exploration Agency astronut Koichi Wakata and Roscosmos cosmonaut Anna Kikina.
—Richard Tribou, Orlando Sentinel, 9 Mar. 2023''',
              style: TextStyle(fontSize: 20),
            ),
          )
        ]),
      ),
    );
  }
}
