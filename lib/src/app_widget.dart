import 'package:flutter/material.dart';
import 'package:jokenpo/src/logic/providers/provider_list.dart';
import 'package:jokenpo/src/presentation/pages/page_builder.dart';
import 'package:jokenpo/utils/consts.dart';

import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // Providers
      providers: providerList,

      child: MaterialApp(
        initialRoute: "/",

        routes: {"/": (context) => const PageBuilder()},

        // Theming
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: deepPurple,
        ),

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
