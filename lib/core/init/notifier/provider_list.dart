import '../navigation/navigation_service.dart';
import 'theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ApplicationProvider {
  static ApplicationProvider _instance;
  static ApplicationProvider get instance {
    if (_instance == null) _instance = ApplicationProvider._init();
    return _instance;
  }

  ApplicationProvider._init();

  List<SingleChildWidget> singleItems =
      []; //Sadece kendisini ilgilendiren değişiklikler
  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(create: (context) => ThemeNotifier()),
    Provider.value(value: NavigationService.instance)
  ]; //Proxy
  List<SingleChildWidget> uiChangeItems =
      []; //UI'ı etkileyen değişiklikler için

}
