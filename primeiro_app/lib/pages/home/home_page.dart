import 'package:flutter/material.dart';
import 'package:primeiro_app/pages/circle_avatar/circle_avatar_page.dart';

enum PopupMenupages {
  containerPage,
  rowColumnsPage,
  mediaQueryPage,
  layoutBuild,
  buttomRotateText,
  simpleChildScrollsView,
  listViews,
  dialogs,
  snakeBar,
  formPage,
  cidades,
  stacks,
  stacks2,
  bottomBarNavigator,
  circleAvatar,
  materialBanner,
  homePageImc
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        actions: [
          PopupMenuButton<PopupMenupages>(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Colors.deepPurple,
            elevation: BorderSide.strokeAlignCenter,
            tooltip: 'Menu',
            onSelected: (PopupMenupages valueSelected) {
              switch (valueSelected) {
                case PopupMenupages.containerPage:
                  Navigator.of(context).pushNamed('/containerPage');
                  break;
                case PopupMenupages.rowColumnsPage:
                  Navigator.of(context).pushNamed('/rowColumnsPage');
                  break;
                case PopupMenupages.mediaQueryPage:
                  Navigator.of(context).pushNamed('/mediaQueryPage');
                  break;
                case PopupMenupages.layoutBuild:
                  Navigator.of(context).pushNamed('/layoutBuild');
                  break;
                case PopupMenupages.buttomRotateText:
                  Navigator.of(context).pushNamed('/buttomRotateText');
                  break;
                case PopupMenupages.simpleChildScrollsView:
                  Navigator.of(context)
                      .pushNamed('/scroll/singleChildScrollsView');
                  break;
                case PopupMenupages.listViews:
                  Navigator.of(context).pushNamed('/scroll/listViews');
                  break;
                case PopupMenupages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopupMenupages.snakeBar:
                  Navigator.of(context).pushNamed('/snakeBar');
                  break;
                case PopupMenupages.formPage:
                  Navigator.of(context).pushNamed('/formpage');
                  break;
                case PopupMenupages.cidades:
                  Navigator.of(context).pushNamed('/cidades');
                  break;
                case PopupMenupages.stacks:
                  Navigator.of(context).pushNamed('/stacks');
                  break;
                case PopupMenupages.stacks2:
                  Navigator.of(context).pushNamed('/stacks2');
                  break;
                case PopupMenupages.bottomBarNavigator:
                  Navigator.of(context).pushNamed('/bottomNavigator');
                  break;
                case PopupMenupages.circleAvatar:
                  Navigator.of(context).pushNamed('/circleAvatar');
                  break;
                case PopupMenupages.materialBanner:
                  Navigator.of(context).pushNamed('/materialBanner');
                  break;
                case PopupMenupages.homePageImc:
                  Navigator.of(context).pushNamed('/homePageImc');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenupages>>[
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.containerPage,
                  child: Text('Container Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.rowColumnsPage,
                  child: Text('Row and Columns Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.mediaQueryPage,
                  child: Text('Media Query Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.layoutBuild,
                  child: Text('Layout Build Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.buttomRotateText,
                  child: Text('Buttom Rotate Text Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.simpleChildScrollsView,
                  child: Text('Simple Child Scrolls View Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.listViews,
                  child: Text('List Views Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.dialogs,
                  child: Text('Dialogs Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.snakeBar,
                  child: Text('Snake Bar Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.formPage,
                  child: Text('Form Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.cidades,
                  child: Text('Cidades Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.stacks,
                  child: Text('Stacks Page'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.stacks2,
                  child: Text('Stacks Page 2'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.bottomBarNavigator,
                  child: Text('bottomBarNavigator'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.circleAvatar,
                  child: Text('Circle Avatar'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.materialBanner,
                  child: Text('Material Banner'),
                ),
                const PopupMenuItem<PopupMenupages>(
                  value: PopupMenupages.homePageImc,
                  child: Text('IMC'),
                ),
              ];
            },
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageAvatar(
              urlImage:
                  'https://img.odcdn.com.br/wp-content/uploads/2022/08/Engineered-Arts.webp',
            ),
          ],
        ),
      ),
    );
  }
}
