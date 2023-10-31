import 'package:flutter/material.dart';
import 'package:sample_project_2/utils/image_constants/imageconstants.dart';
import 'package:sample_project_2/view/chat_screen/chatcard.dart';

class ScreenChat extends StatelessWidget {
  const ScreenChat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ChatCardContainer(
            profileImage: ImageConstants.newDp,
            contactName: "Sayed Ali",
            time: "1.15 PM",
            message: "Hai"));
  }
}
