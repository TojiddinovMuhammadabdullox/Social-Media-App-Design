import 'package:exam/welcome/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnteringScreen extends StatefulWidget {
  const EnteringScreen({super.key});

  @override
  State<EnteringScreen> createState() => _EnteringScreenState();
}

class _EnteringScreenState extends State<EnteringScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenHeight = constraints.maxHeight;
          final screenWidth = constraints.maxWidth;

          double verticalPadding = screenHeight < 600 ? 10.0 : 20.0;
          double containerHeight = screenHeight < 600 ? 50.0 : 75.0;
          double fontSize = screenHeight < 600 ? 18.0 : 24.0;
          double welcomeFontSize = screenHeight < 600 ? 28.0 : 35.0;

          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: screenHeight * 0.25,
                child: Image.asset(
                  "assets/entering/toprectangle.png",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Text(
                    "WELCOME",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF404040),
                      fontSize: welcomeFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 75,
                    height: 5,
                    decoration: BoxDecoration(
                      color: const Color(0xFF404040),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Our App Latest Features\nMake You Crazy",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF2F2F2F),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(verticalPadding),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => const RegisterPage(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    width: screenWidth * 0.9,
                    height: containerHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF7C6AF3),
                          Color(0xFF44A5F5),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Let's Get Started",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: fontSize,
                          ),
                        ),
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF7C6AF3),
                              size: 40,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
