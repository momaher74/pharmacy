import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_drug_state.dart';

class AddDrugCubit extends Cubit<AddDrugState> {
  AddDrugCubit() : super(AddDrugInitial());
}
