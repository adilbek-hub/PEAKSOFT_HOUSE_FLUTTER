import 'package:flutter/material.dart';
import 'package:sabak_9_collections_generic/variables.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Center(
          child: Text('Collections and Generic'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      Image.network(mapUsers[1] ?? 'Unknown User Image'),
                      Text(
                        mapUsers[1.1] ?? 'Unknown User name',
                        style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      Image.network(mapUsers[2] ?? 'Unknown User Image'),
                      Text(
                        mapUsers[2.1] ?? 'Unknown User Name',
                        style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      Image.network(mapUsers[3] ?? 'Unknown User Image'),
                      Text(
                        mapUsers[3.1] ?? 'Unknown User Name',
                        style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      Image.network(mapUsers[4.1] ?? 'Unknown User Image'),
                      Text(
                        mapUsers[4] ?? 'Unknown User Name',
                        style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
