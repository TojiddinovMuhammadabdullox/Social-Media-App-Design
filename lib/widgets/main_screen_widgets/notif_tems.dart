import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotifItems extends StatefulWidget {
  final String? image;
  final String? comment;
  final String? time;
  final String? name;

  const NotifItems({super.key, this.name, this.image, this.comment, this.time});

  @override
  State<NotifItems> createState() => _NotifItemsState();
}

class _NotifItemsState extends State<NotifItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                child: Image.asset(widget.image!),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.name!,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 3),
                        Text(
                          widget.comment!,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Text(
                      widget.time!,
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
