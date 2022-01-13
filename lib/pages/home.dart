import 'package:bottomnavtest/pages/page1.dart';
import 'package:bottomnavtest/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Widget> _children = <Widget>[const Page1(), const Page2()];

  @override
  Widget build(BuildContext context) {
    return Consumer<PositionModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('HomePage')),
          body: _children[model.index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: model.index,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'page 1'),
              BottomNavigationBarItem(icon: Icon(Icons.access_time_rounded), label: 'page 2'),
            ],
            onTap: (int index) => index == 0 ? model.toPage1() : model.toPage2(),
          ),
        );
      },
    );
  }
}

class PositionModel extends ChangeNotifier {
  int _currentPosition = 0;

  int get index => _currentPosition;

  void toPage1() {
    _currentPosition = 0;
    notifyListeners();
  }

  void toPage2() {
    _currentPosition = 1;
    notifyListeners();
  }
}
