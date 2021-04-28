import 'package:flutter/material.dart';

class ListingPage extends StatefulWidget {
  final String title;
  const ListingPage({Key? key, this.title = 'ListingPage'}) : super(key: key);
  @override
  ListingPageState createState() => ListingPageState();
}
class ListingPageState extends State<ListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}