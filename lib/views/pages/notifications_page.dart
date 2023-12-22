import 'package:flutter/material.dart';

import 'package:news_app_ui_clone/views/components/vertical_gap.dart';

import '../../services/font_style.dart';
import '../components/list_tile_with_image.dart';
import '../components/list_tile_with_leading_image.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notification",
                  style: labelTextStyle,
                ),
                const Icon(Icons.more_horiz)
              ],
            ),
            const VerticalGap(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Article for you".toUpperCase(),
                  style: defaultTextstyle.copyWith(color: Colors.grey),
                ),
                Text(
                  "See all".toUpperCase(),
                  style: defaultTextstyle.copyWith(color: Colors.black),
                ),
              ],
            ),
            const ListTileWithImage(
              title: '(Update) Iphone 13 Rumor \n New design ?',
              imageUrl:
                  'https://th.bing.com/th/id/R.e3ec9c0ffc3effee3e361983545689fc?rik=hhcIIAVZAYlhug&pid=ImgRaw&r=0',
            ),
            const ListTileWithImage(
              title: '(Update) Iphone 13 Rumor \n New design ?',
              imageUrl:
                  'https://th.bing.com/th/id/R.e3ec9c0ffc3effee3e361983545689fc?rik=hhcIIAVZAYlhug&pid=ImgRaw&r=0',
            ),
            const ListTileWithImage(
              title: '(Update) Iphone 13 Rumor \n New design ?',
              imageUrl:
                  'https://th.bing.com/th/id/R.e3ec9c0ffc3effee3e361983545689fc?rik=hhcIIAVZAYlhug&pid=ImgRaw&r=0',
            ),
            const VerticalGap(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "today".toUpperCase(),
                  style: defaultTextstyle.copyWith(color: Colors.grey),
                ),
                Text(
                  "See all".toUpperCase(),
                  style: defaultTextstyle.copyWith(color: Colors.black),
                ),
              ],
            ),
            const VerticalGap(),
            const ListtilewithLeadingImage(
              title: "CNN Posts new news",
              subtitle: "from subscribe",
              imageUrl:
                  "https://th.bing.com/th/id/R.5b78163b76b94e7c773ef3fff8bb208d?rik=wC00Piicxt6OFA&pid=ImgRaw&r=0",
            ),
            const VerticalGap(),
            const ListtilewithLeadingImage(
              title: "football news",
              subtitle: "from tag",
              imageUrl:
                  "https://th.bing.com/th/id/R.e062b1838b2bd59f7144d9df03afc237?rik=CmLRmQ1FKzk8Jg&pid=ImgRaw&r=0",
            ),
            const VerticalGap(),
            const ListtilewithLeadingImage(
              title: "More about people",
              subtitle: "from tag",
              imageUrl:
                  "https://th.bing.com/th/id/R.fa5e67376018e06bd8ffb06b3129a717?rik=7G91umXpvhJBjg&riu=http%3a%2f%2f1000logos.net%2fwp-content%2fuploads%2f2016%2f10%2fapple-emblem.jpg&ehk=oZn9asOkaHE7jnq1KK2bsdCC3PpQvx52gN9eXh7e294%3d&risl=&pid=ImgRaw&r=0",
            )
          ],
        ),
      ),
    );
  }
}
