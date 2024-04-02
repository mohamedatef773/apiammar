class Article {
  String title;
  String? description;
  String? urlToImage;
  Article({
    required this.title,
    required this.description,
    required this.urlToImage,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    title: json["title"],
    description: json["description"],
    urlToImage: json["urlToImage"],
  );

}

