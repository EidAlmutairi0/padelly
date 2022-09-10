import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_centers_state.dart';

class GetCentersCubit extends Cubit<GetCentersState> {
  GetCentersCubit() : super(GetCentersInitial());
}
