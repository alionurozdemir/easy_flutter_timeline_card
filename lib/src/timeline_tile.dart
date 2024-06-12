import 'package:flutter/material.dart';

class TimelineTile extends StatelessWidget {
  final Widget child;
  final bool isLast;

  const TimelineTile({
    super.key,
    required this.child,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              if (!isLast) ...[
                Container(
                  width: 1,
                  height: 8,
                  color: const Color(0xFFE2E2E2),
                ),
              ],
              Container(
                width: 8,
                height: 8,
                decoration: const ShapeDecoration(
                  color: Color(0xFFFF671D),
                  shape: OvalBorder(),
                ),
              ),
              if (!isLast) ...[
                Container(
                  width: 1,
                  height: 292,
                  color: const Color(0xFFE2E2E2),
                ),
              ],
            ],
          ),
          const SizedBox(width: 16),
          Expanded(child: child),
        ],
      ),
    );
  }
}
