import 'package:flutter/material.dart';

class ListtilewithLeadingImage extends StatelessWidget {
  const ListtilewithLeadingImage({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      // contentPadding: EdgeInsets.all(0),
      leading: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        width: 60,
        height: 60,
        clipBehavior: Clip.antiAlias,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_vert),
      ),
    );
  }
}
