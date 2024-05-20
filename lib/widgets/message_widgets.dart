import 'package:flutter/material.dart';

class MessageWidgets extends StatefulWidget {
  final String image;
  final String name;
  final String about;
  final String? rate;

  const MessageWidgets({
    super.key,
    required this.image,
    required this.name,
    required this.about,
    this.rate,
  });

  @override
  State<MessageWidgets> createState() => _MessageWidgetsState();
}

class _MessageWidgetsState extends State<MessageWidgets> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(widget.image),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  widget.about,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                )
              ],
            )
          ],
        ),
        if (widget.rate != null)
          CircleAvatar(
            radius: 15,
            backgroundColor: const Color(0xFFF99F42),
            child: Center(
              child: Text(
                widget.rate!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
