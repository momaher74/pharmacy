import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'select_state.dart';

class SelectCubit extends Cubit<SelectState> {
  SelectCubit() : super(SelectInitial());
}
