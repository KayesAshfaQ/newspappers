// create a news paper model
class Newspaper {
  Newspaper({
    required this.title,
    required this.description,
    required this.urlToImage,
  });

  // create a factory constructor to create a Newspaper object from a json
  factory Newspaper.fromJson(Map<String, dynamic> json) => Newspaper(
        title: json['title'] as String,
        description: json['description'] as String,
        urlToImage: json['urlToImage'] as String,
      );

  // create a method to convert a Newspaper object to a json
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'urlToImage': urlToImage,
      };

  // create a title variable
  final String title;

  // create a description variable
  final String description;

  // create a urlToImage variable
  final String urlToImage;
}