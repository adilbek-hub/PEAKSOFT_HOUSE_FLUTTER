import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  // Dummy list
  final List<String> searchList = [
    "Apple",
    "Banana",
    "Cherry",
    "Date",
    "Fig",
    "Grapes",
    "Kiwi",
    "Lemon",
    "Mango",
    "Orange",
    "Papaya",
    "Raspberry",
    "Strawberry",
    "Tomato",
    "Watermelon",
  ];

  // These methods are mandatory you cannot skip them.

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(icon: const Icon(Icons.clear), onPressed: () => query = '')
    ]; // Build the clear button.
  }

  @override
  Widget buildLeading(BuildContext context) {
    return Container();
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(); // Build the search results.
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(); // Build the search suggestions.
  }
}
