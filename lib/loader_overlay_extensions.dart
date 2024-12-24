import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loader_overlay_helper/widgets/loading_overlay_widget.dart';

extension LoaderOverlaySetup on MaterialApp {
  Widget wrapWithGlobalLoaderOverlay({LoadingOverlayWidgetTemplate? loadingOverlayReplace}){
    return GlobalLoaderOverlay(
      overlayWidgetBuilder: (progress) => loadingOverlayReplace?? LoadingOverlayWidget(
        progress: progress,
      ),
      textDirection: TextDirection.rtl,
      overlayWholeScreen: true,
      overlayColor: Colors.black.withOpacity(0.7),
      child: this,);
  }
}

extension LoaderOverlayGetSetup on GetMaterialApp {
  Widget wrapWithGlobalLoaderOverlay({LoadingOverlayWidgetTemplate? loadingOverlayReplace}){
    return GlobalLoaderOverlay(
        overlayWidgetBuilder: (progress) => loadingOverlayReplace?? LoadingOverlayWidget(
          progress: progress,
        ),
        textDirection: TextDirection.rtl,
        overlayWholeScreen: true,
        overlayColor: Colors.black.withOpacity(0.7),
        child: this,);
  }
}
