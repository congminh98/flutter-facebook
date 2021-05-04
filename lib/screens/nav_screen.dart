import 'package:flutter/material.dart';
import 'package:flutter_facebook/config/palette.dart';
import 'package:flutter_facebook/data/data.dart';
import 'package:flutter_facebook/screens/home_screen.dart';
import 'package:flutter_facebook/widget/custom_app_bar.dart';
import 'package:flutter_facebook/widget/responsive.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavScreen extends StatefulWidget {
  @override
  __NavScreenState createState() => __NavScreenState();
}

class __NavScreenState extends State<NavScreen> {
  final List<Widget> _screen = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> _icons = const [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu,
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        appBar: Responsive.isDesktop(context)
            ? PreferredSize(
                preferredSize: Size(screenSize.width, 100),
                child: CustomAppBar(
                  currentUser: currentUser,
                  icon: _icons,
                  selectedIndex: _selectedIndex,
                  onTap: (index) => setState(() => _selectedIndex = index),
                ),
              )
            : '',
        body: IndexedStack(
          index: _selectedIndex,
          children: _screen,
        ),
        bottomNavigationBar: !Responsive.isDesktop(context)
            ? Container(
                padding: const EdgeInsets.only(bottom: 12),
                child: CustomTabBar(
                  icons: _icons,
                  selectedIndex: _selectedIndex,
                  onTap: (index) => setState(() => _selectedIndex = index),
                ),
              )
            : SizedBox.shrink(),
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key key,
    this.icons,
    this.selectedIndex,
    this.onTap,
    this.isBottomIndicator = false,
  }) : super(key: key);
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? Border(
                bottom: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3,
                ),
              )
            : Border(
                top: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3,
                ),
              ),
      ),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
              i,
              Tab(
                  icon: Icon(
                e,
                color:
                    i == selectedIndex ? Palette.facebookBlue : Colors.black45,
                size: 30,
              ))))
          .values
          .toList(),
      // tabs: icons.map((e) => Tab(icon: Icon(e))).toList(),
      onTap: onTap,
    );
  }
}
