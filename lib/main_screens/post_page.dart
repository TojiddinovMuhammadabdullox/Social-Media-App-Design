import 'package:exam/widgets/main_screen_widgets/posts.dart';
import 'package:exam/widgets/posts_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  final String? image;
  final String? name;
  final String? job;
  final String? about;
  final String? postImage;
  final bool isLarge;

  const PostPage({
    super.key,
    this.image,
    this.name,
    this.job,
    this.about,
    this.postImage,
    this.isLarge = false,
  });

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(widget.image!),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: PostsView(
                image: widget.image,
                name: widget.name,
                job: widget.job,
                about: widget.about,
                postImage: widget.postImage,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  PostsWidget(
                    image: "assets/images/opa2.png",
                    icon: Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.red,
                    ),
                    name: "Julian Kramer",
                  ),
                  SizedBox(height: 20),
                  PostsWidget(
                    image: "assets/images/opa1.png",
                    icon: Icon(
                      CupertinoIcons.heart,
                    ),
                    name: "Celina Graf",
                  ),
                  SizedBox(height: 20),
                  PostsWidget(
                    image: "assets/images/opa1.png",
                    icon: Icon(
                      CupertinoIcons.heart,
                    ),
                    name: "Celina Graf",
                  ),
                  SizedBox(height: 20),
                  PostsWidget(
                    image: "assets/images/opa2.png",
                    icon: Icon(
                      CupertinoIcons.heart,
                    ),
                    name: "Celina Graf",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          height: 60,
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/comments/me.png"),
                radius: 20,
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type comment...',
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.send,
                  color: Color(0xFF4B44D4),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
