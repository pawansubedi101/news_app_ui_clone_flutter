import 'package:flutter/material.dart';

import 'package:news_app_ui_clone/views/components/vertical_gap.dart';

import '../../services/font_style.dart';
import '../components/follow_listtile.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

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
                  "Summary Stats",
                  style: labelTextStyle,
                ),
                const Icon(Icons.more_horiz)
              ],
            ),
            const VerticalGap(),
            Text(
              "Your stats".toUpperCase(),
              style: defaultTextstyle.copyWith(color: Colors.grey),
            ),
            const VerticalGap(),
            Container(
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(8)),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Today Daily",
                            style: defaultTextstyle,
                          ),
                          const VerticalGap(),
                          const VerticalGap(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "15",
                                    style: h2Textstyle,
                                  ),
                                  Text(
                                    "Read",
                                    style: smTextstyle,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "15",
                                    style: h2Textstyle,
                                  ),
                                  Text(
                                    "Read",
                                    style: smTextstyle,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "15",
                                    style: h2Textstyle,
                                  ),
                                  Text(
                                    "Read",
                                    style: smTextstyle,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            const VerticalGap(),
            Text(
              "favourite topic".toUpperCase(),
              style: defaultTextstyle.copyWith(color: Colors.grey),
            ),
            const FollowListtile(
              title: "Technology",
            ),
            const FollowListtile(
              title: "Sport",
            ),
            const FollowListtile(
              title: "Life & Style",
            ),
          ],
        ),
      ),
    );
  }
}
