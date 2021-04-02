import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Category(
              image_location: 'images/cats/tshirt.png',
              image_caption: 'tshirt',
            ),
            Category(
              image_location: 'images/cats/dress.png',
              image_caption: 'dress',
            ),
            Category(
              image_location: 'images/cats/jeans.png',
              image_caption: 'pants',
            ),
            Category(
              image_location: 'images/cats/formal.png',
              image_caption: 'formal',
            ),
            Category(
              image_location: 'images/cats/informal.png',
              image_caption: 'informal',
            ),
            Category(
              image_location: 'images/cats/shoes.png',
              image_caption: 'shoes',
            ),
          ],
        ));
  }
}

class Category extends StatelessWidget {
  final String image_location, image_caption;
  Category({this.image_caption, this.image_location});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
