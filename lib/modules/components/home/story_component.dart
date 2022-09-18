import 'package:flutter/material.dart';
import 'package:multikart_app/shared/dummy/story_dummy.dart';

class StoryComponent extends StatelessWidget {
  final StoryDummy model;
  const StoryComponent({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
            // color: Colors.yellow,
            image: DecorationImage(
              image: AssetImage(model.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          model.title,
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
