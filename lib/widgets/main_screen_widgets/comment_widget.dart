import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentsWidget extends StatefulWidget {
  final String? name;
  final String? image;

  const CommentsWidget({super.key, this.name, this.image});

  @override
  State<CommentsWidget> createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        widget.image != null ? AssetImage(widget.image!) : null,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.name ?? "Anonymous",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Icon(
                              Icons.check_circle_rounded,
                              color: Color(0xFF4B44D4),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque interdum blandit ipsum sed scelerisque.",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/comments/reply.png",
                        color: Colors.grey.shade800,
                        width: 22,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "4 replies",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/comments/time.png",
                        width: 22,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "5 min ago",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Divider(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
