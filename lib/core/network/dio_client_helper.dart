import 'package:riverpod_demo/core/utils/widgets/index.dart';
import 'package:riverpod_demo/core/constants/index.dart';

abstract class DioClientHelper {
  showErrorMessage(String message) {
    AppConstants.rootScaffoldMessengerKey.currentState!.showSnackBar(
      customSnackBar(
        error: true,
        text: message,
      ),
    );
  }
}
