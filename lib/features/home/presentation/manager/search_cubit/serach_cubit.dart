import 'package:bookly/features/home/presentation/manager/search_cubit/serach_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SerachCubit extends Cubit<SerachState> {
  SerachCubit() : super(SerachInitial());
}
