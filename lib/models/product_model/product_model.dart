class ProductModel {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  ProductModel(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  static List<ProductModel> products = [
    ProductModel(
        name: 'CupCake',
        category: 'Desert',
        imageUrl:
            'https://i2.wp.com/hipfoodiemom.com/wp-content/uploads/2012/05/img_3186.jpg',
        price: 2.0,
        isRecommended: true,
        isPopular: false),
    ProductModel(
        name: 'Macaron',
        category: 'Desert',
        imageUrl:
            'https://th.bing.com/th/id/R.61b1164875d103dba5cf6ce3051b79ff?rik=OtBdZCqs0C8rbw&pid=ImgRaw&r=0',
        price: 2.0,
        isRecommended: false,
        isPopular: false),
    ProductModel(
        name: 'Coffee',
        category: 'Drinks',
        imageUrl:
            'https://th.bing.com/th/id/R.f0e601573d2e900373d7edb566022193?rik=tavB6JEAn3WvCw&riu=http%3a%2f%2f2.bp.blogspot.com%2f-swesfwQN5HQ%2fVPdQ-CCcg1I%2fAAAAAAAAA2E%2fsDxeH4J_6lo%2fs1600%2fcoffee-1.jpg&ehk=2JmzjLRFxhykggu5OOH1gqhV8ktFkMY5ATo5hL6MdqM%3d&risl=&pid=ImgRaw&r=0',
        price: 2.0,
        isRecommended: false,
        isPopular: true),
    ProductModel(
        name: 'Chocolate',
        category: 'Desert',
        imageUrl:
            'https://th.bing.com/th/id/R.7ca5a5f4a26289e5cb40c3da276044fc?rik=CRes3Gl9NNIl4w&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f35900000%2fWhite-Chocolate-chocolate-35993837-2040-1360.jpg&ehk=gZiL9BPs01H%2fLbXWkVZ0P%2fOiTYTiTMyt%2fRZz3ip52zM%3d&risl=&pid=ImgRaw&r=0',
        price: 2.0,
        isRecommended: true,
        isPopular: false),
    ProductModel(
        name: 'Chips',
        category: 'Chips',
        imageUrl:
            'https://th.bing.com/th/id/R.31b2e2c166004f093ed13caaba9e4ae9?rik=zhbxtueNOGgESg&pid=ImgRaw&r=0',
        price: 2.0,
        isRecommended: true,
        isPopular: true),
  ];
}
