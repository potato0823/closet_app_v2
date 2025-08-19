import 'package:flutter/material.dart';

class closetHome extends StatefulWidget {
  const closetHome({super.key});

  @override
  State<closetHome> createState() => closetHomeState();
}

class closetHomeState extends State<closetHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // タブの数
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Text("Closet App"),centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: ImageIcon(AssetImage('images/topsIcon.png'))),
              Tab(icon: ImageIcon(AssetImage('images/bottomIcon.png'))),
              Tab(icon: ImageIcon(AssetImage('images/dressIcon.png'))),
            ],
            indicatorColor: Colors.white,
          ),
          backgroundColor: Colors.brown[100],
        ),
        body: const TabBarView(
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 1', style: TextStyle(fontSize: 24)),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 2', style: TextStyle(fontSize: 24)),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 3', style: TextStyle(fontSize: 24)),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: closetHome(),
  ));
}
