import 'package:exam/main_screens/comment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostsView extends StatefulWidget {
  final String? image;
  final String? name;
  final String? job;
  final String? about;
  final String? postImage;
  final Function(String? image, String? name, String? job, String? about,
      String? postImage)? onTap;
  final double imageSize;

  const PostsView({
    Key? key,
    this.image,
    this.name,
    this.postImage,
    this.job,
    this.about,
    this.onTap,
    this.imageSize = 40.0, // Default size
  }) : super(key: key);

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!(widget.image, widget.name, widget.job, widget.about,
              widget.postImage);
        }
      },
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 0),
              ),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: widget.imageSize,
                      backgroundImage: widget.image != null
                          ? AssetImage(widget.image!)
                          : const AssetImage('assets/default_avatar.png'),
                    ),
                  ),
                  const SizedBox(width: 7),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name ?? 'Anonymous',
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.job ?? 'Unknown Job',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              if (widget.about != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    widget.about!,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.grey.shade900,
                    ),
                  ),
                )
              else if (widget.postImage != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(widget.postImage!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                          size: 30,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          "127",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => CommentScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                            "assets/postimg/comment.png",
                            width: 25,
                          ),
                        ),
                        const SizedBox(width: 3),
                        Text(
                          "87",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/postimg/send.png",
                          width: 26,
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/postimg/saved.png",
                      color: Colors.black,
                      width: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
