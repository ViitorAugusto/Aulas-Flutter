import 'package:flutter/material.dart';
import 'package:primeiro_app/pages/bem-vindo/bem_vindo.dart';
import 'package:primeiro_app/pages/bottom_bar_navigate/bottom_bar_navigator_page.dart';
import 'package:primeiro_app/pages/buttom_rotate/buttom_rotate_text.dart';
import 'package:primeiro_app/pages/cidades/cidades_page.dart';
import 'package:primeiro_app/pages/circle_avatar/circle_avatar_page.dart';
import 'package:primeiro_app/pages/container/container_page.dart';
import 'package:primeiro_app/pages/dialogs/dialogs_page.dart';
import 'package:primeiro_app/pages/form/form_page.dart';
import 'package:primeiro_app/pages/home/home_page.dart';
import 'package:primeiro_app/pages/layout_build/layout_build_page.dart';
import 'package:primeiro_app/pages/material_banner/meterial_banner.dart';
import 'package:primeiro_app/pages/media_query/media_query_page.dart';
import 'package:primeiro_app/pages/page-imc/page_imc.dart';
import 'package:primeiro_app/pages/row_columns/row_columns_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:primeiro_app/pages/scrolls/list_single_view_page.dart';
import 'package:primeiro_app/pages/scrolls/single_child_scrolls_view.dart';
import 'package:primeiro_app/pages/snake-bar/snake_bar_page.dart';
import 'package:primeiro_app/pages/stacks/stacks2_page.dart';
import 'package:primeiro_app/pages/stacks/stacks_page.dart';

void main() => runApp(
      DevicePreview(
        enabled: false, //!kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: BemVindoPage(),
      ),
      routes: {
        '/homePage': (context) => const HomePage(),
        '/homePageImc': (context) => const HomePageImc(),
        '/containerPage': (context) => const ContainerPage(),
        '/rowColumnsPage': (context) => const RowColumnsPage(),
        '/mediaQueryPage': (context) => const MediaQueryPage(),
        '/layoutBuild': (context) => const LayoutBuildPage(),
        '/buttomRotateText': (context) => const ButtomRotateText(),
        '/scroll/singleChildScrollsView': (context) =>
            const SingleChildScrollsView(),
        '/scroll/listViews': (context) => const ListSingleViewPage(),
        '/dialogs': (context) => const DailogsPage(),
        '/snakeBar': (context) => const SnakeBarPage(),
        '/formpage': (context) => const FormPage(),
        '/cidades': (context) => const CidadePage(),
        '/stacks': (context) => const StacksPage(),
        '/stacks2': (context) => const StacksPage2(),
        '/bottomNavigator': (context) => const BottomBarNavigatorPage(),
        '/circleAvatar': (context) => const CircleAvatarPage(),
        '/materialBanner': (context) => const MaterialBannerPage(),
      },
    );
  }
}
