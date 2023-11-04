import 'package:flutter/material.dart';
import 'package:sample_project_2/utils/color_constants/color_contants.dart';

class ScreenGroup extends StatelessWidget {
  const ScreenGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Stay Connected with a community",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          textAlign: TextAlign.center,
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
          style: TextStyle(fontSize: 14, height: 1.5),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "See example communities",
            style: TextStyle(color: ColorConstants.backGroundGreen),
          ),
        ),
        Container(
          height: 30,
          width: 300,
          decoration: BoxDecoration(
              color: ColorConstants.backGroundGreen,
              borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: Text(
            "Start your community",
            style: TextStyle(
                color: ColorConstants.mainText, fontWeight: FontWeight.w500),
          )),
        )
      ],
    ));
  }
}
