import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/ui/providers/providers.dart';
import 'package:trabalho3/ui/theme/app_theme.dart';
import 'package:trabalho3/ui/widgets/barra_navegacao_widget.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeModelProvider);
    final themeDao = ref.read(themeDaoProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.customTheme.brightness == Brightness.light.name
          ? AppTheme.lightTheme.theme
          : AppTheme.darkTheme.theme,
      home: BarraNavegacaoWidget(
        toggleTheme: () {
          debugPrint(theme.customTheme.brightness);

          themeDao.toggleTheme();
          theme.changeTheme(themeDao.getTheme());
        },
      ),
    );
  }
}
