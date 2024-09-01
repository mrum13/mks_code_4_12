import 'package:flutter/material.dart';
import 'package:makassar_coding_4_12/const/theme.dart';

class SubmenuHome extends StatelessWidget {
  final String image;
  final String title;

  const SubmenuHome({
    super.key,
    required this.image,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
            image,
            height: 72,
            width: 72,
          ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 15, 
              fontWeight: FontWeight.w400, 
              color: greyTextColor),
        )
      ],
    );
  }
}
