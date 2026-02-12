import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_app/app/app.bottomsheets.dart';
import 'package:my_first_app/app/app.dialogs.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:my_first_app/core/theme/app_theme.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(
    EasyLocalization(
      path: 'lib/core/translations',
      supportedLocales: const [
        Locale('th'),
        Locale('en'),
      ],
      fallbackLocale: const Locale('th'),
      startLocale: const Locale('en'),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.baseTheme,
      initialRoute: Routes.coinListView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      navigatorObservers: [StackedService.routeObserver],
    );
  }
}
