import 'package:flutter/material.dart';
import 'package:sample_project_2/utils/color_constants/color_contants.dart';

class ChatCardContainer extends StatelessWidget {
  const ChatCardContainer(
      {super.key,
      required this.profileImage,
      required this.contactName,
      required this.time,
      required this.message});
  final String profileImage;
  final String contactName;
  final String time;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: ListTile(
        contentPadding: EdgeInsets.all(5),
        leading: CircleAvatar(
          backgroundImage: AssetImage(profileImage),
          radius: 30,
        ),
        title: Text(
          contactName,
          style: TextStyle(
              color: ColorConstants.blackText,
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.done_all,
              size: 17,
            ),
            SizedBox(
              width: 5,
            ),
            Text(message)
          ],
        ),
        trailing: Text(
          time,
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
