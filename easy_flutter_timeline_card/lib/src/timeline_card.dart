import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_flutter_timeline_card/src/timeline_tile.dart';

class TimelineCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final bool isLast;

  const TimelineCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isLast: isLast,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: GoogleFonts.robotoSlab(
              color: const Color(0xFFFF671D),
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: GoogleFonts.robotoSlab(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 14),
          Container(
            height: 157,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
