import 'package:exam/main_screens/comment_screen.dart';
import 'package:exam/main_screens/notifications.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomnavbarState createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      if (index == 3) {
        if (_selectedIndex == 3) {
          // ignore: unrelated_type_equality_checks
          index == const NotificationsPage();
        }
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NotificationsPage()),
        );
      } else {
        _selectedIndex = index;
      }
      if (index == 1) {
        if (_selectedIndex == 1) {
          // ignore: unrelated_type_equality_checks
          index == const CommentScreen();
        }
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CommentScreen()),
        );
      } else {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/bottombaricons/home.png',
            width: 24,
            height: 24,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/bottombaricons/messaging.png',
            width: 24,
            height: 24,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF7C6AF3),
                  Color(0xFF44A5F5),
                ],
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/bottombaricons/ring.png',
            width: 24,
            height: 24,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/bottombaricons/person.png',
            width: 24,
            height: 24,
          ),
          label: '',
        ),
      ],
    );
  }
}
