import 'package:exam/main_screens/home_page.dart';
import 'package:exam/welcome/login_infor.dart';
import 'package:exam/welcome/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _validateName = true;
  bool _validateEmail = true;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String? _errorMessage;

  void _login() async {
    setState(() {
      _validateName = _nameController.text.isNotEmpty;
      _validateEmail = _emailController.text.isNotEmpty;
    });

    if (_validateName && _validateEmail) {
      final userInfo = await LoginInfo.readLoginInfo();
      if (userInfo != null &&
          userInfo.fullName == _nameController.text &&
          userInfo.email == _emailController.text) {
        Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(
            builder: (ctx) => const HomePage(),
          ),
        );
      } else {
        setState(() {
          _errorMessage = "Informations not equal";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double horizontalPadding = screenWidth < 600 ? 20.0 : 50.0;
          double containerWidth = screenWidth < 600 ? screenWidth * 0.4 : 200.0;

          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "Login",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF2F2F2F),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: containerWidth,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0XFFD44638),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              "GOOGLE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: containerWidth,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0XFF4267B2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              "FACEBOOK",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "OR",
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF5F6FA),
                        border: InputBorder.none,
                        hintText: "Full Name",
                        hintStyle: GoogleFonts.inter(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                        errorText:
                            _validateName ? null : 'Please enter your name',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF5F6FA),
                        border: InputBorder.none,
                        hintText: "Enter Email / Phone Number",
                        hintStyle: GoogleFonts.inter(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                        errorText: _validateEmail
                            ? null
                            : 'Please enter a valid email or phone number',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget Password",
                            style: TextStyle(
                              color: Color(0xFF7C6AF3),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    if (_errorMessage != null)
                      Text(
                        _errorMessage!,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(screenWidth, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color(0xFFB3B2B2),
                      ),
                      onPressed: _login,
                      child: Text(
                        "LOGIN",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: Column(
                        children: [
                          const Text("Don't Have An Account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (ctx) => const RegisterPage(),
                                ),
                              );
                            },
                            child: Text(
                              "REGISTER",
                              style: GoogleFonts.inter(
                                color: const Color(0xFF7C6AF3),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
