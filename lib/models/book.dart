class Book {
  final String name;
  final String description;
  final String authorName;
  final String cover;
  Book({required this.name, required this.authorName, required this.description, required this.cover});

  static Book fromJson(json) => Book(
    name: json['name'],
    description: json['description'],
    authorName: json['author'],
    cover: json['cover']
  );
}