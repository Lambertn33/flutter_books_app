import 'package:books_app/models/book.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final Book selectedBook;
  const BookDetails({required this.selectedBook, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(selectedBook.name)),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            title: Text('${selectedBook.name} ${selectedBook.authorName}'),
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(selectedBook.cover, fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(children: [
                Text(selectedBook.name),
                Text(selectedBook.description)
              ]),
            ),
          )
        ],
      )
    );
  }
}
