import 'package:flutter/material.dart';
import 'package:flutter_exam/core/routing/router.dart';
import 'package:flutter_exam/ui/theme/jobr_theme.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: router,
      title: 'Jobr',
      theme: jobrTheme,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: child ?? const SizedBox(),
        );
      },
    ),
  );
}
