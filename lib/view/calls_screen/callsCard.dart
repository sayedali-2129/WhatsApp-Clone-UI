import 'package:flutter/material.dart';
import 'package:sample_project_2/utils/color_constants/color_contants.dart';

class CallsCard extends StatelessWidget {
  const CallsCard(
      {super.key,
      required this.contactName,
      required this.date,
      required this.time,
      required this.profileImage});
  final String contactName;
  final String date;
  final String time;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListTile(
        contentPadding: EdgeInsets.all(5),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(profileImage),
        ),
        title: Text(
          contactName,
          style: TextStyle(color: ColorConstants.blackText),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.call_received,
              size: 16,
              color: ColorConstants.backGroundGreen,
            ),
            SizedBox(
              width: 5,
            ),
            Text(date),
            Text(", "),
            Text(
              time,
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
        trailing: Icon(
          Icons.call,
          color: ColorConstants.backGroundGreen,
        ),
      ),
    );
  }
}
