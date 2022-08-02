import 'package:flutter/material.dart';

import 'package:app/screens/statistics.dart';
import 'package:app/screens/register.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: const AppView(),
    ); 
  }
}

class AppView extends StatelessWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      title: 'Hey you, beer me!',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MainPage(title: 'Hey you, beer me!'),
    );
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static List<Widget> _screens = <Widget>[Statistics(), Register()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.green,
          onTap: (value) {
            // Respond to item press.
            setState(() => _selectedIndex = value);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart),
              label: 'Statistics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fingerprint),
              label: 'Register',
            ),
          ],
        ),
        body: _screens.elementAt(_selectedIndex));
  }
}