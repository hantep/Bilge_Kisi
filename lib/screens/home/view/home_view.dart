import 'package:bilge_kisi/core/init/theme/app_theme.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/base/model/base_model.dart';
import '../../../core/constants/enums/local_keys_enum.dart';
import '../../../core/base/state/base_state.dart';
import '../../../core/base/view/base_view.dart';
import '../../../core/extensions/string_extension.dart';
import '../../../core/init/caching/locale_manager.dart';
import '../../../core/init/lang/language_manager.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../viewmodel/home_view_model.dart';
import '../../../core/extensions/context_extension.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeScreen> {
  HomeViewModel viewmodel;
  @override
  Widget build(BuildContext context) {
    return BaseView(
      onPageBuilder: (context, value) => scaffoldbody,
      viewModel: HomeViewModel(),
      onModelReady: (model) {
        viewmodel = model;
      },
    );
  }

  Widget get scaffoldbody => Scaffold(
        appBar: AppBar(
          leading: Text(
              LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)),
          title: Text(
            LocaleKeys.welcome.locale,
            style: context.textTheme.headline5,
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.change_history),
                onPressed: () {
                  context.locale =
                      LanguageManager.instance.enLocale; //Aktif dili değiştirir
                })
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: viewmodel.incrementNumber,
        ),
        body: Row(
          children: [textnumber, Text(LocaleKeys.welcome.locale)],
        ),
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: 2,
          onTap: (int i) => print('click index=$i'),
          style: TabStyle.flip,
        ),
      );

  Widget get textnumber {
    return Observer(builder: (context) => Text(viewmodel.number.toString()));
  }

  Future<BaseModel<T>> ddd<T>() async {
    var f = await 12;
  }
}
