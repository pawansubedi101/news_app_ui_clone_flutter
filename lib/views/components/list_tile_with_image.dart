import 'package:flutter/material.dart';

import '../../services/font_style.dart';
import 'horizontol_gap.dart';

class ListTileWithImage extends StatelessWidget {
  const ListTileWithImage({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        tileColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        title: Text(
          title,
          style: smTextstyle.copyWith(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "7 Hours",
              style: smTextstyle.copyWith(fontSize: 13),
            ),
            const HotriZontolGap(),
            Text(
              "Tech",
              style: smTextstyle.copyWith(fontSize: 13),
            ),
          ],
        ),
        trailing: Card(
          elevation: 4,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.all(0),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
