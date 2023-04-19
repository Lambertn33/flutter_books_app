import 'package:books_app/books/data/booksData.dart';
import 'package:flutter/material.dart';

import '../models/book.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Book> booksList = BooksData.getBooks();
    return Scaffold(
      appBar: AppBar(title: const Text('books List')),
      body: Center(
        child: ListView.builder(
          itemCount: booksList.length,
          itemBuilder: (context, index){
            var book = booksList[index];
            return Card(
              elevation: 5,
              child: Padding(padding: const EdgeInsets.all(13),
              child: ListTile(
                title: Text(book.name),
                subtitle: Text(book.authorName),
                leading: Image.asset(book.cover),
                trailing: IconButton(icon: const Icon(Icons.forward),
                  onPressed: () {
                    Navigator.pushNamed(context, '/bookDetails', arguments: book);
                  },
                  iconSize: 24,
                  color: Colors.deepPurple,
                )
              ),)
            );
        }),
      ),
    );
  }
}