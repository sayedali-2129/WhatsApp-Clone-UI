import 'package:flutter/material.dart';
import 'package:sample_project_2/database/database.dart';
import 'package:sample_project_2/utils/image_constants/imageconstants.dart';
import 'package:sample_project_2/view/chat_screen/chatcard.dart';

class ScreenChat extends StatelessWidget {
  const ScreenChat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DataBase.ChatContactsdata.length,
        itemBuilder: (context, index) => ChatCardContainer(
              profileImage: ImageConstants.newDp,
              contactName: DataBase.ChatContactsdata[index]["name"],
              time: DataBase.ChatContactsdata[index]["time"],
              message: DataBase.ChatContactsdata[index]["message"],
            ));
  }
}
