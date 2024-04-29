class CategoryModel {
  final String image;
  final String title;

  CategoryModel({required this.image, required this.title});

  static List<CategoryModel> categories = [
    CategoryModel(
        image:
            'https://th.bing.com/th/id/R.f1423432e2512c7dcae1ecf74118f54a?rik=wJelEZ53e4iHUw&riu=http%3a%2f%2fwww.blog.sagmart.com%2fwp-content%2fuploads%2f2015%2f08%2fdoughnuts.jpg&ehk=F2uhfrvO2%2by7VFmKCxjdomfNxKxBnknmxq4m1cqvIGY%3d&risl=&pid=ImgRaw&r=0',
        title: 'Donuts'),
    CategoryModel(
        image:
            'https://th.bing.com/th/id/R.ca580c99ba364647adfc8b5441295e97?rik=ZviedVv4Cs1AXw&riu=http%3a%2f%2fmedia-cache-ak0.pinimg.com%2f736x%2ff8%2f4f%2f21%2ff84f2150d9d95f0cbd060eb02554d67c.jpg&ehk=t90K4XfFqrSkjrKdMMt%2fquZiANdWs%2bB5E%2beQhsSxLVY%3d&risl=&pid=ImgRaw&r=0',
        title: 'Coockies'),
    CategoryModel(
        image:
            'https://th.bing.com/th/id/OIP.g_M2wfB-faEDBiO6ttIlEgHaFi?rs=1&pid=ImgDetMain',
        title: 'Cake'),
  ];
}
