import 'package:books_app/books/bookDetails.dart';
import 'package:books_app/books/books.dart';
import 'package:books_app/models/book.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const BookList());
      case "/bookDetails":
        final Book selectedBook = settings.arguments as Book;
        return MaterialPageRoute(
            builder: (context) => BookDetails(selectedBook: selectedBook),
            settings: settings);
      default:
        return generateErrorRoute();
    }
  }

  static Route<dynamic> generateErrorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('Invalid Page'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text('Back Home'))
          ]),
        ),
      );
    });
  }
}
