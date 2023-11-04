import 'package:flutter/material.dart';
import 'package:sample_project_2/utils/color_constants/color_contants.dart';

class StatusAvatar extends StatelessWidget {
  const StatusAvatar({super.key, required this.avatharImage});
  final String avatharImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: ColorConstants.lightGreen,
        ),
        CircleAvatar(
          radius: 26,
          backgroundImage: AssetImage(avatharImage),
        ),
      ],
    );
  }
}
