import 'package:easy_flutter_timeline_card/timeline_card.dart';
import 'package:flutter/material.dart';

class TimelineCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final ImageProvider? imageProvider;
  final bool isLast;

  const TimelineCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.imageProvider,
    this.isLast = false,
  });

  factory TimelineCard.asset({
    Key? key,
    required String title,
    required String subtitle,
    required String imageUrl,
    bool isLast = false,
  }) {
    return TimelineCard(
      key: key,
      title: title,
      subtitle: subtitle,
      imageProvider: AssetImage(imageUrl),
      isLast: isLast,
    );
  }

  factory TimelineCard.network({
    Key? key,
    required String title,
    required String subtitle,
    required String imageUrl,
    bool isLast = false,
  }) {
    return TimelineCard(
      key: key,
      title: title,
      subtitle: subtitle,
      imageProvider: NetworkImage(imageUrl),
      isLast: isLast,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isLast: isLast,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: const TextStyle(
              color: Color(0xFFFF671D),
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 14),
          Container(
            height: 157,
            decoration: BoxDecoration(
              image: imageProvider != null
                  ? DecorationImage(
                      image: imageProvider!,
                      fit: BoxFit.fill,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
