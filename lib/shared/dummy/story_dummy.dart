class StoryDummy {
  final String imageUrl;
  final String title;
  StoryDummy({
    required this.imageUrl,
    required this.title,
  });
  static List<StoryDummy> storyDummy = [
    StoryDummy(
      imageUrl: 'assets/images/story/beauty.png',
      title: 'Beauty',
    ),
    StoryDummy(
      imageUrl: 'assets/images/story/jewelry.png',
      title: 'Jewelry',
    ),
    StoryDummy(
      imageUrl: 'assets/images/story/kids.png',
      title: 'Kids',
    ),
    StoryDummy(
      imageUrl: 'assets/images/story/men.png',
      title: 'Men',
    ),
    StoryDummy(
      imageUrl: 'assets/images/story/shoes.png',
      title: 'Shoes',
    ),
    StoryDummy(
      imageUrl: 'assets/images/story/women.png',
      title: 'Women',
    ),
  ];
}
