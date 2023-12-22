import 'package:flutter/material.dart';

import 'package:news_app_ui_clone/services/font_style.dart';
import 'package:news_app_ui_clone/views/components/vertical_gap.dart';

import '../components/list_tile_with_image.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Headlines",
                  style: labelTextStyle,
                ),
                const Icon(Icons.more_horiz)
              ],
            ),
            const VerticalGap(),
            GestureDetector(
              onTap: () {
                print("Search Button pressed !!!");
              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8)),
                alignment: Alignment.center,
                child: Text(
                  "Search",
                  style: defaultTextstyle.copyWith(color: Colors.grey),
                ),
              ),
            ),
            const VerticalGap(),
            TabBar(
                padding: const EdgeInsets.all(0),
                indicatorPadding: EdgeInsets.zero,
                unselectedLabelColor: Colors.grey,
                controller: controller,
                labelColor: Colors.indigo,
                labelStyle:
                    defaultTextstyle.copyWith(fontWeight: FontWeight.w700),
                indicatorColor: Colors.transparent,
                isScrollable: true,
                unselectedLabelStyle: smTextstyle.copyWith(color: Colors.grey),
                tabs: [
                  Text(
                    "Latest".toUpperCase(),
                  ),
                  Text("indonesia".toUpperCase()),
                  Text("technology".toUpperCase()),
                  Text("world".toUpperCase())
                ]),
            const VerticalGap(),
            Expanded(
                child: TabBarView(controller: controller, children: [
              ListView(
                physics: const BouncingScrollPhysics(),
                children: [
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
                  GestureDetector(
                    onTap: () {
                      print("Read more button pressed !!!");
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8)),
                      alignment: Alignment.center,
                      child: Text(
                        "Read more on technology",
                        style: smTextstyle.copyWith(color: Colors.indigo),
                      ),
                    ),
                  ),
                  const VerticalGap(),
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
                ],
              ),
              const Text("dsfa"),
              const Text("dsfasdf"),
              const Text("dsfasdf")
            ]))
          ],
        ),
      ),
    );
  }
}
