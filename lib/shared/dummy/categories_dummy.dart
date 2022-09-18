class CategoriesDummy {
  final String name;
  final String title;
  final String imageUrl;
  final bool right;
  CategoriesDummy({
    required this.name,
    required this.title,
    required this.imageUrl,
    required this.right,
  });
  static List<CategoriesDummy> categories = [
    CategoriesDummy(
      name: 'Sales',
      title: 'upto 50% off on al produts',
      imageUrl: 'assets/images/category/sale.png',
      right: true,
    ),
    CategoriesDummy(
        name: 'WOMEN',
        title: 't-shirts,tops,bottoms',
        imageUrl: 'assets/images/category/women.png',
        right: false),
    CategoriesDummy(
        name: 'MEN',
        title: 'jackets,jeans,denims',
        imageUrl: 'assets/images/category/men.png',
        right: true),
    CategoriesDummy(
      name: 'KIDS',
      title: 'clothind,toys,books',
      imageUrl: 'assets/images/category/kids.png',
      right: false,
    ),
    CategoriesDummy(
      name: 'BEAUTY',
      title: 'skincare,haircare,makeup',
      imageUrl: 'assets/images/category/beauty.png',
      right: true,
    ),
    CategoriesDummy(
      name: 'FOOTWEAR',
      title: 'shoes,sandle,activewear',
      imageUrl: 'assets/images/category/footwear.png',
      right: false,
    ),
  ];
  static List<String> categoriesDetails = [
    'Maxi Dresses',
    'Skirts',
    'Crop Tops',
    'Tunics',
    'Halter Tops',
    'Spaghetti Kurtas',
    'Capes',
    'Fusion Gowns',
    'Nightwear',
    'Handbags',
  ];
}
