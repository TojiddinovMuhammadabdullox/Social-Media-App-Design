import 'package:exam/widgets/bottomnavbar/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/postcrc.png"),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Aldebaror Reo',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Image.asset(
                          "assets/settings_icons/location.png",
                          width: 20,
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          'United State',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: Image.asset("assets/settings_icons/edit.png"),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildListItem('assets/settings_icons/icon1.png', 'Home'),
                  _buildListItem('assets/settings_icons/icon2.png', 'Activity',
                      count: 12),
                  _buildListItem('assets/settings_icons/icon3.png', 'Friends'),
                  _buildListItem('assets/settings_icons/icon4.png', 'Messages',
                      count: 99),
                  _buildListItem('assets/settings_icons/icon5.png', 'Albums'),
                  _buildListItem(
                      'assets/settings_icons/icon6.png', 'Favorites'),
                  const Divider(),
                  _buildListItem('assets/settings_icons/icon7.png', 'Setting'),
                  _buildListItem('assets/settings_icons/icon8.png', 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomWidget(),
    );
  }

  Widget _buildListItem(String img, String title, {int count = 0}) {
    return ListTile(
      leading: Image.asset(img, width: 24, height: 24),
      title: Text(title),
      trailing: count > 0
          ? Container(
              width: 62,
              height: 32,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color(0xFF7C6AF3),
                  Color(0xFF44A5F5),
                ]),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  '$count',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )
          : null,
      onTap: () {},
    );
  }
}
