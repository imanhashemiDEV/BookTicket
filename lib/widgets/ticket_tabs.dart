import 'package:bookticket/utils/app_layout.dart';
import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  const TicketTabs(
      {required this.righTtext, required this.leftText, super.key});
  final String righTtext;
  final String leftText;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              width: AppLayout.getScreenWidth() * 0.42,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50)),
                color: Color(0xFFF4F6FD),
              ),
              child: Center(
                child: Text(leftText),
              ),
            ),
            Container(
              width: AppLayout.getScreenWidth() * 0.42,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50)),
                color: Color(0xFFF4F6FD),
              ),
              child: Center(
                child: Text(righTtext),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
