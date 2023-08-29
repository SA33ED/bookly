import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/features/home/presentation/manager/search_cubit/search_state.dart';
import 'package:bookly/features/home/presentation/views/widgets/search_result_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (BlocProvider.of<SearchCubit>(context).resultBooks.isEmpty) {
          return const CustomErrorWidget(
            errMessage: "Search Now",
            textColor: Colors.white,
            icon: Icons.search,
          );
        } else {
          if (state is SearchSuccess) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount:
                  BlocProvider.of<SearchCubit>(context).resultBooks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: SearchResultListViewItem(
                    book: BlocProvider.of<SearchCubit>(context)
                        .resultBooks[index],
                  ),
                );
              },
            );
          } else if (state is SearchFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        }
      },
    );
  }
}
