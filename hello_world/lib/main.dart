import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const DefaultTabController(
        length: 3,
        child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'App bar Title',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.account_circle_rounded)),
        ],
        actionsIconTheme: const IconThemeData(color: Colors.white),
        bottom: const TabBar(
          tabs: [
            Tab(child: Icon(Icons.home_rounded)),
            Tab(child: Icon(Icons.info_rounded)),
            Tab(child: Icon(Icons.help_rounded))
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          Center(child: Text('Home Tab')),
          Center(child: Text('About Tab')),
          Center(child: Text('Help Tab'))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_rounded), label: 'About'),
          BottomNavigationBarItem(
              icon: Icon(Icons.help_rounded), label: 'Help'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: Column(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.home_rounded),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.info_rounded),
              title: Text('Info'),
            ),
            ListTile(
              leading: Icon(Icons.help_rounded),
              title: Text('Help'),
            ),
          ],
        ),
      ),
    );
  }
}
