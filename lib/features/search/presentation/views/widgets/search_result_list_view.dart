import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Text(""),
        );
      },
    );
  }
}
