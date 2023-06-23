import 'package:riverpod_demo/views/dashboard/model/dashboard_response_model.dart';
import 'package:riverpod_demo/views/dashboard/service/i_dashboard_service.dart';
import 'package:riverpod_demo/core/network/dio_client.dart';
import 'package:riverpod_demo/core/utils/enums/index.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class DashboardService extends IDashboarService {
  late final DioClient _dioClient = DioClient();

  @override
  Future<DashboardResponseModel?> fetchData() async {
    var response = await _dioClient.dio.request(
      EndPointsEnums.dummy.value,
      options: Options(method: 'GET'),
    );

    if (response.statusCode == HttpStatus.ok) {
      return DashboardResponseModel.fromJson(response.data);
    }

    return null;
  }
}
