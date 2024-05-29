class Rating {
  final double rate;
  final int reviews;

  Rating({required this.rate, required this.reviews});

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(rate: json['average'], reviews: json['reviews']);
  }

  Map<String, dynamic> toJson() {
    return {
      'average': rate,
      'reviews': reviews,
    };
  }
}

class Books {
  final int id;
  final String title;
  final String author;
  final double price;
  final String genre;
  final String publishedDate;
  final Rating rating;

  Books({
    required this.id,
    required this.title,
    required this.author,
    required this.price,
    required this.genre,
    required this.publishedDate,
    required this.rating,
  });

  factory Books.fromJson(Map<String, dynamic> json) {
    return Books(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      price: json['price'],
      genre: json['genre'],
      publishedDate: json['publishedDate'],
      rating: Rating.fromJson(json['rating']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title, 
      'author': author,
      'price': price,
      'genre': genre,
      'publishedDate': publishedDate, 
      'rating': rating.toJson(),
    };
  }
}
