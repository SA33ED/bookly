import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          CustomSearchTextField(),
          SizedBox(height: 30),
          Text("Results", style: Styles.textstyle18),
          SizedBox(height: 30),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
