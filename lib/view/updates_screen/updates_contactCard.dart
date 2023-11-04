import 'package:flutter/material.dart';
import 'package:sample_project_2/utils/color_constants/color_contants.dart';
import 'package:sample_project_2/view/updates_screen/circleavatar_stack.dart';

class UpdatesContactCard extends StatelessWidget {
  const UpdatesContactCard(
      {super.key,
      required this.contactName,
      required this.time,
      required this.profileImage});
  final String contactName;

  final String time;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              StatusAvatar(avatharImage: profileImage),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contactName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
