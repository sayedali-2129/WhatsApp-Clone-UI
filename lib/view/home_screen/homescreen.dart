import 'package:flutter/material.dart';
import 'package:sample_project_2/utils/color_constants/color_contants.dart';
import 'package:sample_project_2/view/calls_screen/calls_screen.dart';
import 'package:sample_project_2/view/chat_screen/chat_screen.dart';
import 'package:sample_project_2/view/group_screen/groupscreen.dart';
import 'package:sample_project_2/view/updates_screen/updates_screen.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.backGroundGreen,
          title: Text(
            "WhatsApp",
            style: TextStyle(color: ColorConstants.mainText),
          ),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(indicatorColor: ColorConstants.mainText, tabs: [
            Tab(
              icon: Icon(
                Icons.groups,
              ),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Updates",
            ),
            Tab(
              text: "Calls",
            )
          ]),
        ),
        body: TabBarView(children: [
          ScreenGroup(),
          ScreenChat(),
          ScreenUpdates(),
          ScreenCalls()
        ]),
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: () {},
          backgroundColor: ColorConstants.backGroundGreen,
          child: Icon(Icons.chat),
        ),
      ),
    );
  }
}
