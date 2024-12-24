

import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loader_overlay_helper/widgets/loading_overlay_widget.dart';

mixin LoaderOverlayMixin {
  bool get isLoadingVisible {
    if (Get.context == null) return false;

    return Get.context!.loaderOverlay.visible;
  }

  showLoading() {
    if (Get.context != null) {
      Get.context!.loaderOverlay.show(
        widgetBuilder: (progress) {
          return LoadingOverlayWidget(
            progress: progress != null ? progress as String : null,
          );
        },
      );
    }
  }

  hideLoading() {
    if (Get.context != null) {
      Get.context!.loaderOverlay.hide();
    }
  }

  loadingAddProgress({String? progress}) {
    if (Get.context != null) {
      Get.context!.loaderOverlay.progress(progress ?? '');
    }
  }
}