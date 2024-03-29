import 'package:flutter/material.dart';
import 'select_flight.dart';
import 'main_screen.dart';
import 'past_flights.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: Brightness.dark,
        colorScheme:
            const ColorScheme.dark().copyWith(secondary: Colors.orange),
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 200.0,
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.8,
                  colors: [
                    Colors.black,
                    Color(0xFFBF5527),
                  ],
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/logo2.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.map, color: Colors.orange, size: 30),
              title: const Text('Map',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.flight, color: Colors.orange, size: 30),
              title: const Text('Select Flight Plan',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SelectFlight()),
                );
              },
            ),
            ListTile(
              leading:
                  const Icon(Icons.flight_land, color: Colors.orange, size: 30),
              title: const Text('Past Flights',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PastFlights()),
                );
              },
            ),
            // Add more ListTiles for other views
          ],
        ),
      ),
    );
  }
}
