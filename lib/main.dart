import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  // const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // #OLD QUOTES LIST
  // List <String> quotes=[
  //   'Technology is best when it brings people together.',
  //   'It has become appallingly obvious that our technology has exceeded our humanity.',
  //   'It is only when they go wrong that machines remind you how powerful they are.'
  // ];

  List<Quote> quotes = [
    Quote(author: 'prasad', text: 'chala Hawa yeu dya'),
    Quote(author: 'prasad', text: 'chala Hawa yeu dya'),
    Quote(author: 'prasad', text: 'Dokyala Shot nako Hawa yeu dya')
  ];

  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(quote: quote,);
        }).toList(),
      ),
    );
  }
}

