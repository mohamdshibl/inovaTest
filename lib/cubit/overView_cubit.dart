import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/overview_model/overview.dart';
import '../shared/remote/dio_helper.dart';
import 'overView_states.dart';

class OverViewCubit extends Cubit<OverViewStates> {

  OverViewCubit() : super(OverViewInitialState());

  static OverViewCubit get(context) => BlocProvider.of(context);

  final networkService = NetworkService();




  List<Overview> overviewsList = [];

  Future<List<Overview>> getData() async {
    try {

      const url = "https://f8089b5d-c239-4af4-bbe9-139878730ba6.mock.pstmn.io/overview1";
      final response = await networkService.get(url);

      final dynamic responseData = jsonDecode(response.data);

      if (responseData is List) {
        for (var jsonData in responseData) {
          final overview = Overview.fromJson(jsonData);
          overviewsList.add(overview);
          emit(GetDataState());
        }
      } else if (responseData is Map<String, dynamic>) {
        final overview = Overview.fromJson(responseData);
        overviewsList.add(overview);
        emit(GetDataState());
        print(overview.seriesName);
      }

      return overviewsList;
    } catch (e) {
      print('Error: $e');
      rethrow; // Rethrow the error
    }
  }


}
