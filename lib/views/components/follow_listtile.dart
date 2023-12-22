import 'package:flutter/material.dart';

import '../../services/font_style.dart';

class FollowListtile extends StatelessWidget {
  const FollowListtile({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        leading: const CircleAvatar(
          child: Text("T"),
        ),
        title: Text(
          title,
          style: defaultTextstyle,
        ),
        trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Follow",
                style: defaultTextstyle,
              ),
            )),
      ),
    );
  }
}
