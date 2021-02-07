import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'todos_list_state.dart';

class TodosListCubit extends Cubit<TodosListState> {
  TodosListCubit() : super(TodosListInitial());
}
