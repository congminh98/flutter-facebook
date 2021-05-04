import 'package:flutter/material.dart';
import 'package:flutter_facebook/models/models.dart';
import 'package:flutter_facebook/widget/profile_avatar.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key key,
    this.user,
  }) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(
            imageUrl: user.imageUrl,
          ),
          SizedBox(width: 6),
          Text(
            user.name,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
