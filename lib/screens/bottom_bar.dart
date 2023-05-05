import 'package:beleza/screens/home_page.dart';
import 'package:beleza/screens/profile_screen.dart';
import 'package:beleza/screens/search_screen.dart';
import 'package:beleza/screens/ticket_screen.dart';
import 'package:flutter/material.dart';

class  BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // ignore: unused_field
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
   setState(() {
      _selectedIndex = index;//helps rebuild UI with new face/ information
   });
  
  } 

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}