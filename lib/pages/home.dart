import 'package:bottomnavtest/pages/page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final List<Widget> _children;
  int _selected = 0;

  @override
  void initState() {
    super.initState();

    _children = <Widget>[
      CustomPage(
        title: 'Vers Page 2',
        onPressed: () => _handleTap(1),
      ),
      CustomPage(
        title: 'Vers Page 1',
        onPressed: () => _handleTap(0),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body: _children[_selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'page 1'),
          BottomNavigationBarItem(icon: Icon(Icons.access_time_rounded), label: 'page 2'),
        ],
        onTap: _handleTap,
      ),
    );
  }

  void _handleTap(int index) {
    setState(() {
      _selected = index;
    });
  }
}
