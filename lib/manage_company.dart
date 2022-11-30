import 'package:admin/style/colors.dart';
import 'package:admin/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/appBarActionItems.dart';
import 'component/sideMenu.dart';
import 'config/size_config.dart';

class ManageCompany extends StatefulWidget {
  ManageCompany({Key? key}) : super(key: key);

  @override
  State<ManageCompany> createState() => _ManageQuestionState();
}

class _ManageQuestionState extends State<ManageCompany> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  Row HeaderCompany()
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
                      text: 'Company',
                      size: 30,
                      fontWeight: FontWeight.w800),
                  PrimaryText(
                    text: 'Manage All Company Detail',
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondary,
                  )
                ]),
          ),
        ]);
  }

  void removeCompany()
  {
    //dosomething
  }
  Container DataTableCompany()
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: DataTable(
        columns:  <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Text(
                'ID',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Image',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                '',
              ),
            ),
          ),
        ],
        rows:  <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('1')),
              DataCell(Text('LG')),
              DataCell(
                  Container(
                    height: MediaQuery.of(context).size.height / 9 - 20,
                    width: MediaQuery.of(context).size.height / 9 + 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black),
                    child: Center(
                        child: Image(
                          image: AssetImage('assets/lg_is.png'),
                          height: MediaQuery.of(context).size.height / 9,
                          width: MediaQuery.of(context).size.width / 10,
                        )),
                  )),
              DataCell(IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.xmark_circle_fill))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('2')),
              DataCell(Text('Sam Sung')),
              DataCell(
                  Container(
                    height: MediaQuery.of(context).size.height / 9 - 20,
                    width: MediaQuery.of(context).size.height / 9 + 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black),
                    child: Center(
                        child: Image(
                          image: AssetImage('assets/samsung_is.png'),
                          height: MediaQuery.of(context).size.height / 9,
                          width: MediaQuery.of(context).size.width / 10,
                        )),
                  )
              ),
              DataCell(IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.xmark_circle_fill))),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('3')),
              DataCell(Text('Fujitsu')),
              DataCell(
                  Container(
                    height: MediaQuery.of(context).size.height / 9 - 20,
                    width: MediaQuery.of(context).size.height / 9 + 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black),
                    child: Center(
                        child: Image(
                          image: AssetImage('assets/fujitsu_is.png'),
                          height: MediaQuery.of(context).size.height / 9,
                          width: MediaQuery.of(context).size.width / 10,
                        )),
                  )
              ),
              DataCell(IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.xmark_circle_fill))),
            ],
          ),
        ],
      ),
    );
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
                        HeaderCompany(),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 2.5,
                        ),
                        DataTableCompany()
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

