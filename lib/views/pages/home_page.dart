import 'package:flutter/material.dart';
import 'package:news_app_ui_clone/services/font_style.dart';
import 'package:news_app_ui_clone/views/components/horizontol_gap.dart';
import 'package:news_app_ui_clone/views/components/vertical_gap.dart';

import '../components/list_tile_with_image.dart';

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/logo.png',
                scale: 2.0,
              ),
              const HotriZontolGap(),
              Text(
                "News",
                style: labelTextStyle,
              )
            ],
          ),
          actions: const [
            CircleAvatar(
              radius: 16,
              child: Icon(
                Icons.person,
                size: 17,
              ),
            ),
            HotriZontolGap()
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                            text: "Covid-19 News : ",
                            style: smTextstyle.copyWith(color: Colors.indigo),
                            children: [
                              TextSpan(
                                  text:
                                      "See the latest coverage about Covid-19",
                                  style:
                                      smTextstyle.copyWith(color: Colors.grey))
                            ]),
                      ),
                    ),
                    const Icon(Icons.chevron_right)
                  ],
                ),
              ),
            ),
            const VerticalGap(),
            Text(
              "News for you",
              style: defaultTextstyle,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "Top 5 News of the day",
              style: smTextstyle,
            ),
            const VerticalGap(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              clipBehavior: Clip.antiAlias,
              height: 130,
              child: Image.network(
                'https://th.bing.com/th/id/OIP.nGaATU0ZuN1p-ILvL8aYJAHaE8?pid=ImgDet&rs=1',
                fit: BoxFit.fitWidth,
                errorBuilder: (context, error, stackTrace) {
                  return const CircularProgressIndicator();
                },
              ),
            ),
            const VerticalGap(),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                "Dream home design inspiration for you in the future.",
                style: smTextstyle,
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "3 Hours",
                    style: smTextstyle.copyWith(fontSize: 13),
                  ),
                  const HotriZontolGap(),
                  Text(
                    "Architecture",
                    style: smTextstyle.copyWith(fontSize: 13),
                  ),
                ],
              ),
            ),
            const VerticalGap(),
            const ListTileWithImage(
              title: '(Update) Iphone 13 Rumor \n New design ?',
              imageUrl:
                  'https://th.bing.com/th/id/R.e3ec9c0ffc3effee3e361983545689fc?rik=hhcIIAVZAYlhug&pid=ImgRaw&r=0',
            ),
            const VerticalGap(),
            const ListTileWithImage(
                imageUrl:
                    "https://th.bing.com/th/id/R.3fc9d5c8b3d934f82c21d6e5353767dd?rik=dtUqM7A8gIvpuQ&pid=ImgRaw&r=0",
                title: "best time to see the sunset in the afternon."),
            const VerticalGap(),
            const ListTileWithImage(
              title: '(Update) Iphone 13 Rumor \n New design ?',
              imageUrl:
                  'https://th.bing.com/th/id/R.e3ec9c0ffc3effee3e361983545689fc?rik=hhcIIAVZAYlhug&pid=ImgRaw&r=0',
            ),
            const VerticalGap(),
            const ListTileWithImage(
                imageUrl:
                    "https://th.bing.com/th/id/R.3fc9d5c8b3d934f82c21d6e5353767dd?rik=dtUqM7A8gIvpuQ&pid=ImgRaw&r=0",
                title: "best time to see the sunset in the afternon.")
          ],
        ),
      ),
    );
  }
}
