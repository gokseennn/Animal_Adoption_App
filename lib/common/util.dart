import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';

extension StateMixinExtension<T> on StateMixin<T> {
  void commonAppend(Future<T> Function() Function() body,
      {String? errorMessage}) {
    final compute = body();

    compute().then((newValue) {
      if (newValue == null) {
      } else {
        // ignore: invalid_use_of_protected_member
        change(newValue, status: RxStatus.success());
      }
    }, onError: (err) {
      // ignore: invalid_use_of_protected_member
      change(state, status: RxStatus.error(errorMessage ?? err.toString()));
    });
  }
}
