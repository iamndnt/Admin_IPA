import 'package:admin/style/colors.dart';
import 'package:admin/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/appBarActionItems.dart';
import 'component/sideMenu.dart';
import 'config/size_config.dart';

class ManageQuiz extends StatefulWidget {
  ManageQuiz({Key? key}) : super(key: key);

  @override
  State<ManageQuiz> createState() => _ManageQuizState();
}

class _ManageQuizState extends State<ManageQuiz> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  Row HeaderQuiz()
  {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryText(
                      text: 'Quiz',
                      size: 30,
                      fontWeight: FontWeight.w800),
                  PrimaryText(
                    text: 'Manage All Quiz',
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondary,
                  )
                ]),
          ),
        ]);
  }

  void removeQuiz()
  {
    //dosomething
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(width: 100, child: SideMenu()),
      appBar:AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(
            onPressed: () {
              _drawerKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu, color: AppColors.black)),
        actions: [
          AppBarActionItems(),
        ],
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 10,
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeaderQuiz(),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 2.5,
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );


  }

}

