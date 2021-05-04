import 'package:flutter/material.dart';
import 'package:flutter_facebook/models/models.dart';
import 'package:flutter_facebook/widget/button_function.dart';
import 'package:flutter_facebook/widget/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "What\'s on your mind?",
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonFunction(
                  icon: const Icon(Icons.videocam, color: Colors.red),
                  press: () {},
                  label: "Live",
                ),
                VerticalDivider(width: 8),
                ButtonFunction(
                  icon: const Icon(Icons.photo_library, color: Colors.green),
                  press: () {},
                  label: "Live",
                ),
                VerticalDivider(width: 8),
                ButtonFunction(
                  icon: const Icon(Icons.video_call, color: Colors.purple),
                  press: () {},
                  label: "Live",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
