class BannersData {
  final String imageUrl;
  BannersData({required this.imageUrl});
  static List<BannersData> banners = [
    BannersData(imageUrl: 'assets/images/banner/1.jpg'),
    BannersData(imageUrl: 'assets/images/banner/2.jpg'),
    BannersData(imageUrl: 'assets/images/banner/5.jpg'),
    BannersData(imageUrl: 'assets/images/banner/4.jpg'),
    BannersData(imageUrl: 'assets/images/banner/3.jpg'),
  ];
}
