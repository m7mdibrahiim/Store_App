class ProductModel {
  final int id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory ProductModel.fromjson(jsondata) {
    return ProductModel(
        id: jsondata['id'],
        title: jsondata['title'],
        price: jsondata['price'].toString(),
        description: jsondata['description'],
        category: jsondata['category'],
        image: jsondata['image'],
        rating: RatingModel.fromjson(jsondata['rating']));
  }
}

class RatingModel {
  final String rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromjson(jsondata) {
    return RatingModel(
      rate: jsondata['rate'].toString(),
      count: jsondata['count'],
    );
  }
}
