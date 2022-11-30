import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/colors.dart';

String avatar='https://scontent.fdad3-5.fna.fbcdn.net/v/t1.6435-9/117657232_2508170206072125_4251227160409722003_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=WkLI5aPSo64AX_qv-_B&_nc_ht=scontent.fdad3-5.fna&oh=00_AfBUD-QfTveSok-lobDr_V3to-dsXLakUMPv-vLZMe8hlw&oe=63AD74E2';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            icon: SvgPicture.asset(
              'assets/calendar.svg',
              width: 20,
            ),
            onPressed: () {}),
        SizedBox(width: 10),
        IconButton(
            icon: SvgPicture.asset('assets/ring.svg', width: 20.0),
            onPressed: () {}),
        SizedBox(width: 15),
        Row(children: [
          CircleAvatar(
            radius: 17,
            backgroundImage: NetworkImage(
              avatar,
            ),
          ),
          Icon(Icons.arrow_drop_down_outlined, color: AppColors.black)
        ]),
      ],
    );
  }
}
