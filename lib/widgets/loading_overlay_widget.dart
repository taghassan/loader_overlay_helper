import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class LoadingOverlayWidgetTemplate extends StatelessWidget {
  final String? loadingMessage;
  final String? progress;
  final String? lodingAssetPath;

  const LoadingOverlayWidgetTemplate(
      {super.key, this.loadingMessage, this.progress, this.lodingAssetPath});
}

class LoadingOverlayWidget extends StatelessWidget
    implements LoadingOverlayWidgetTemplate {
  @override
  final String? loadingMessage;
  @override
  final String? progress;
  @override
  final String? lodingAssetPath;

  const LoadingOverlayWidget(
      {super.key, this.loadingMessage, this.progress, this.lodingAssetPath});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 4.5,
        sigmaY: 4.5,
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            lodingAssetPath != null
                ? Image.asset(
                    '$lodingAssetPath',
                    color: Colors.white,
                    width: Get.width * 0.4,
                    height: Get.height * 0.4,
                  )
                : FlutterLogo(
                    size: 150,
                  ),
            const SizedBox(
              height: 10,
            ),
            Text(
              (loadingMessage ?? 'جار التحميل...').tr,
              style: GoogleFonts.tajawal(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              (progress ?? '').tr,
              style: GoogleFonts.tajawal(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
