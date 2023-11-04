import 'package:flutter/material.dart';
import 'package:sample_project_2/database/database.dart';
import 'package:sample_project_2/utils/image_constants/imageconstants.dart';
import 'package:sample_project_2/view/updates_screen/updates_contactCard.dart';

class ScreenUpdates extends StatelessWidget {
  const ScreenUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: DataBase.updatesData.length,
      itemBuilder: (context, index) => UpdatesContactCard(
          contactName: DataBase.updatesData[index]["name"],
          time: DataBase.updatesData[index]["time"],
          profileImage: ImageConstants.newDp),
    );
  }
}
