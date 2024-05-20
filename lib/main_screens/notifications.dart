import 'package:exam/widgets/bottomnavbar/navbar.dart';
import 'package:exam/widgets/main_screen_widgets/notif_tems.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notfication",
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/icon/dots.png",
              width: 30,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            NotifItems(
              image: "assets/notifimg/first.png",
              name: "Reny Lewis",
              comment: "Commented on your post",
              time: "Just Now",
            ),
            Divider(),
            NotifItems(
              image: "assets/notifimg/second.png",
              name: "Reny Lewis",
              comment: "Liked your post",
              time: "1 Hour ago",
            ),
            Divider(),
            NotifItems(
              image: "assets/notifimg/third.png",
              name: "Reny Lewis",
              comment: "Started Following You",
              time: "3 Hours ago",
            ),
            Divider(),
            NotifItems(
              image: "assets/notifimg/fourth.png",
              name: "Reny Lewis",
              comment: "Tagged You in A Post",
              time: "6 Hours ago",
            ),
            Divider(),
            NotifItems(
              image: "assets/notifimg/fifth.png",
              name: "Reny Lewis",
              comment: "Liked your post",
              time: "8 Hours ago",
            ),
            Divider(),
            NotifItems(
              image: "assets/notifimg/sixth.png",
              name: "Reny Lewis",
              comment: "Commented on your post",
              time: "14 Hours ago",
            ),
            Divider(),
            NotifItems(
              image: "assets/notifimg/first.png",
              name: "Reny Lewis",
              comment: "Started following you",
              time: "Yesterday",
            ),
            Divider(),
            NotifItems(
              image: "assets/notifimg/fifth.png",
              name: "Reny Lewis",
              comment: "Commented on your post",
              time: "Yesterday",
            ),
            Divider(),
            NotifItems(
              image: "assets/notifimg/third.png",
              name: "Reny Lewis",
              comment: "Commented on your post",
              time: "Just Now",
            ),
            Divider(),
          ],
        ),
      ),
      bottomNavigationBar:const BottomWidget(),
    );
  }
}
