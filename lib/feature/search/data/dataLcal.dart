class RestaurantItem {
  final String imagePath;
  final String title;
  final String priceLevel;
  final String category;

  RestaurantItem({
    required this.imagePath,
    required this.title,
    required this.priceLevel,
    required this.category,
  });
}

class Data_Local {
  static final List<RestaurantItem> items = [
    RestaurantItem(
      imagePath: 'assets/image/home1.png',
      title: 'Fast Food',
      priceLevel: '\$\$',
      category: 'Chinese',
    ),
    RestaurantItem(
      imagePath: 'assets/image/home2.png',
      title: 'Mexican',
      priceLevel: '\$\$',
      category: 'Chinese',
    ),
    RestaurantItem(
      imagePath: 'assets/image/home3.png',
      title: 'Bakery',
      priceLevel: '\$\$',
      category: 'Chinese',
    ),
    RestaurantItem(
      imagePath: 'assets/image/home4.png',
      title: 'Breakfast & Brunch',
      priceLevel: '\$\$',
      category: 'Chinese',
    ),
    RestaurantItem(
      imagePath: 'assets/image/home5.png',
      title: 'Deserts',
      priceLevel: '\$\$',
      category: 'Chinese',
    ),
    RestaurantItem(
      imagePath: 'assets/image/home6.png',
      title: 'Burgers',
      priceLevel: '\$\$',
      category: 'Chinese',
    ),
    RestaurantItem(
      imagePath: 'assets/image/home7.png',
      title: 'The Halal Guys',
      priceLevel: '\$\$',
      category: 'Chinese',
    ),
    RestaurantItem(
      imagePath: 'assets/image/home8.png',
      title: 'The Halal Guys',
      priceLevel: '\$\$',
      category: 'Chinese',
    ),
    // أضف المزيد من العناصر هنا
  ];
}
