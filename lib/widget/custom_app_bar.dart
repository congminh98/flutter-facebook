import 'package:flutter/material.dart';
import 'package:flutter_facebook/config/palette.dart';
import 'package:flutter_facebook/models/models.dart';
import 'package:flutter_facebook/screens/nav_screen.dart';
import 'package:flutter_facebook/widget/circle_button.dart';
import 'package:flutter_facebook/widget/user_card.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
    this.currentUser,
    this.icon,
    this.selectedIndex,
    this.onTap,
  }) : super(key: key);
  final User currentUser;
  final List<IconData> icon;
  final int selectedIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "facebook",
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: 600,
            child: CustomTabBar(
              icons: icon,
              selectedIndex: selectedIndex,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                UserCard(user: currentUser),
                SizedBox(width: 12),
                CircleButton(
                  icon: Icons.search,
                  size: 30,
                  press: () {},
                ),
                CircleButton(
                  icon: MdiIcons.facebookMessenger,
                  size: 30,
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
