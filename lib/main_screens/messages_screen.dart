import 'package:exam/widgets/bottomnavbar/navbar.dart';
import 'package:exam/widgets/message_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Message",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Image.asset(
              "assets/images/editing.png",
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F6FA),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Color(0xFF7572F4),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Find Your Friends",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF918FB7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Today",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                children: [
                  MessageWidgets(
                    image: "assets/messageimg/circle1.png",
                    name: "Reny Lewis",
                    about: "Please confirm the friendship...",
                    rate: "5",
                  ),
                  SizedBox(height: 30),
                  MessageWidgets(
                    image: "assets/messageimg/circle2.png",
                    name: "Jessica Jones",
                    about: "I’m On Vocation Ron...",
                    rate: "1",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Yesterday",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                children: [
                  MessageWidgets(
                    image: "assets/messageimg/circle3.png",
                    name: "Reny Lewis",
                    about: "Please confirm the friendship...",
                  ),
                  SizedBox(height: 30),
                  MessageWidgets(
                    image: "assets/messageimg/circle4.png",
                    name: "Alexender Walker",
                    about: "I’ve Gone Through The Procedure ...",
                  ),
                  SizedBox(height: 30),
                  MessageWidgets(
                    image: "assets/messageimg/circle5.png",
                    name: "Angelina Rumour",
                    about: "I have a job as a foreman...",
                  ),
                  SizedBox(height: 30),
                  MessageWidgets(
                    image: "assets/messageimg/circle6.png",
                    name: "Terris Ronad",
                    about: "Where are you going at night...",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomWidget(),
    );
  }
}
