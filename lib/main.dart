import 'package:flutter/material.dart';
import 'quote.dart';
import 'quetecard.dart';
void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  
  List<Quote> quotes = [
    Quote(text: "ife is a beautiful journey that is meant to be embraced to the fullest every day. However, that doesn’t mean you always wake up ready to seize the day, and sometimes need a reminder that life is a great gift. Whether a funny quote from a famous celebrity or an encouraging message about giving it your best from a successful business person, we can all use a little motivation and inspiration these days via a life quote.", author: "Moinuddin"),
     Quote(text: "hi thi jam writing a quote", author: "Moinuddin"),
      Quote(text: "hi thi jam writing a quote", author: "Moinuddin")
  ];

  Widget quoteTemplate(quote){
    return QuoteCard(quote: quote);
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

