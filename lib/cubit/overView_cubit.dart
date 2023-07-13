import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/remote/dio_helper.dart';
import 'overView_states.dart';

class OverViewCubit extends Cubit<OverViewStates> {

  OverViewCubit() : super(OverViewInitialState());

  static OverViewCubit get(context) => BlocProvider.of(context);

  final networkService = NetworkService();

  Future<List<dynamic>> getData() async {
    final networkService = NetworkService();
    const url = "https://f8089b5d-c239-4af4-bbe9-139878730ba6.mock.pstmn.io/overview1";
    try {
      final response = await networkService.get(url);

      print(response.data);

      return response.data;
    } catch (e) {
      print('Error: $e');
      rethrow; // Rethrow the error
    }
  }


}
