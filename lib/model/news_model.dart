class NewsModel {
  String image;
  String title;
  String description;

  NewsModel({
    required this.image,
    required this.title,
    required this.description,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
    image: json["image"],
    title: json["title"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "title": title,
    "description": description,
  };
}
