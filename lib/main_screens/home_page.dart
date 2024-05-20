import 'package:exam/main_screens/settings_page.dart';
import 'package:exam/widgets/bottomnavbar/navbar.dart';
import 'package:exam/widgets/main_screen_widgets/posts.dart';
import 'package:exam/widgets/main_screen_widgets/users.dart';
import 'package:exam/main_screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:exam/main_screens/post_page.dart'; // Import PostPage

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> users = [
    {
      "name": "Jacob",
      "image": "assets/people/second.png",
    },
    {
      "name": "Luna",
      "image": "assets/people/third.png",
    },
    {
      "name": "John",
      "image": "assets/people/fourth.png",
    },
    {
      "name": "Netaliya",
      "image": "assets/people/first.png",
    },
    {
      "name": "Rober",
      "image": "assets/people/fifth.png",
    },
  ];

  void _onPostTap(String? image, String? name, String? job, String? about,
      String? postImage) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => PostPage(
          image: image,
          name: name,
          job: job,
          about: about,
          postImage: postImage,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Comuni",
          style: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..shader = const LinearGradient(
                colors: [
                  Color(0xFF7C6AF3),
                  Color(0xFF44A5F5),
                ],
              ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (ctx) => SettingsPage()));
            },
            icon: Image.asset(
              "assets/icon/settings.png",
              width: 25,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const SearchScreen(),
                ),
              );
            },
            icon: Image.asset(
              "assets/icon/search.png",
              width: 25,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.maxWidth;
            double padding = width * 0.05;
            double imageSize = width * 0.15;
            double iconSize = width * 0.07;

            return Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: imageSize,
                                  height: imageSize,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/people/first.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: imageSize * 0.53,
                                  child: Container(
                                    width: iconSize,
                                    height: iconSize,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFF7C6AF3),
                                          Color(0xFF44A5F5),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Your",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      for (var user in users)
                        UsersWidget(image: user['image']!, name: user['name']!)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Column(
                    children: [
                      PostsView(
                        image: "assets/postimg/first.png",
                        name: "Alexender Walker",
                        job: "Engineering Student",
                        about:
                            "Dummy text is also used to demonstrate the appearance of different typefaces and layouts.",
                        onTap: _onPostTap,
                      ),
                      SizedBox(height: padding),
                      PostsView(
                        image: "assets/postimg/girlimg.png",
                        name: "Jessica Jones",
                        job: "Socialist",
                        postImage: "assets/postimg/city.png",
                        onTap: _onPostTap,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomWidget(),
    );
  }
}
