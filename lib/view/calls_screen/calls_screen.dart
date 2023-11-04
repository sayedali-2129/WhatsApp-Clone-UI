import 'package:flutter/material.dart';
import 'package:sample_project_2/database/database.dart';
import 'package:sample_project_2/utils/color_constants/color_contants.dart';
import 'package:sample_project_2/utils/image_constants/imageconstants.dart';
import 'package:sample_project_2/view/calls_screen/callsCard.dart';

class ScreenCalls extends StatelessWidget {
  const ScreenCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 70,
          child: ListTile(
            contentPadding: EdgeInsets.all(5),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: ColorConstants.backGroundGreen,
              child: Icon(
                Icons.link,
                color: ColorConstants.mainText,
                size: 25,
              ),
            ),
            title: Text(
              "Create call link",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Share a link for your WhatsApp call"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            "Recent",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: DataBase.callsData.length,
          itemBuilder: (context, index) => CallsCard(
            profileImage: ImageConstants.newDp,
            contactName: DataBase.callsData[index]["name"],
            date: DataBase.callsData[index]["date"],
            time: DataBase.callsData[index]["time"],
          ),
        ),
      ],
    );
  }
}
