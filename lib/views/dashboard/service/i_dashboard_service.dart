import 'package:riverpod_demo/views/dashboard/model/dashboard_response_model.dart';

abstract class IDashboarService {
  IDashboarService();

  Future<DashboardResponseModel?> fetchData();
}
