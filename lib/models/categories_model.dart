class CategoriesModel {
  final String image;
  final String title;
  CategoriesModel({required this.image, required this.title});
}

List<CategoriesModel> categories = [
  CategoriesModel(image: "assets/images/artiste8.png", title: "B3atz Mix"),
  CategoriesModel(image: "assets/images/artiste13.png", title: "Gospel"),
  CategoriesModel(image: "assets/images/artiste9.png", title: "Rap"),
  CategoriesModel(image: "assets/images/artiste0.png", title: "Hip Hop"),
  CategoriesModel(image: "assets/images/artiste11.png", title: "Afrobeat"),
  CategoriesModel(image: "assets/images/artiste12.png", title: "World Wide Music"),
];
