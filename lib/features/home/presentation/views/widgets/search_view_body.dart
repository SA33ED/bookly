import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/home/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          CustomSearchTextField(
            onChanged: (value) {
              BlocProvider.of<SearchCubit>(context).sreachByTitle(key: value);
            },
          ),
          const SizedBox(height: 30),
          const Text("Results", style: Styles.textstyle18),
          const SizedBox(height: 30),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
