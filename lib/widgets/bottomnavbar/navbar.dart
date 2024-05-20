import 'package:exam/main_screens/home_page.dart';
import 'package:exam/main_screens/messages_screen.dart';
import 'package:exam/main_screens/notifications.dart';
import 'package:exam/main_screens/personal_profile.dart';

import 'package:flutter/material.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (ctx) => const HomePage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (ctx) => const MessagesScreen()),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (ctx) => const NotificationsPage()),
        );
        break;
      case 4:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (ctx) => const PersonalProfile()),
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xFF7C6AF3),
      unselectedItemColor: const Color(0xFF44A5F5),
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/bottombaricons/home.png",
            width: 25,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/bottombaricons/messaging.png",
            width: 25,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 56.0,
            width: 56.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color(0xFF7C6AF3),
                  Color(0xFF44A5F5),
                ])),
            child: const Icon(Icons.add, color: Colors.white),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/bottombaricons/ring.png",
            width: 25,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/bottombaricons/person.png",
            width: 25,
          ),
          label: '',
        ),
      ],
    );
  }
}
