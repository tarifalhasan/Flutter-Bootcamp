import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Set this to true to show the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 10),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 180,
                  width: 350,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100)),
                ),
                Positioned(
                  top: 1,
                  left: 0,
                  child: Container(
                    height: 450,
                    width: 12,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(2)),
                  ),
                )
              ],
            ),
          ),
        ),
        drawer: const Drawer(
          child: Column(children: []),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings"), // Add another item
          ],
        ),
      ),
    );
  }
}
