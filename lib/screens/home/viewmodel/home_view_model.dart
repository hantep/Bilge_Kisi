import 'package:flutter/cupertino.dart';
import '../../../core/constants/enums/http_request_enum.dart';
import '../../../common_models/product_model.dart';
import '../../../core/constants/enums/app_theme_enum.dart';
import '../../../core/init/network/network_manager.dart';
import '../../../core/init/notifier/theme_notifier.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModel with _$HomeViewModel;

abstract class _HomeViewModel with Store {
  BuildContext context;

  void setContext(BuildContext context) {
    this.context = context;
  }

  @observable
  bool isLoading = false;

  @observable
  int number = 0;

  @computed
  bool get isEven => number % 2 == 0;

  @action
  void incrementNumber() {
    number++;
  }

  //Tema değiştirme örneği
  void changeTheme() {
    Provider.of<ThemeNotifier>(context, listen: false)
        .changeValue(AppThemes.DARK);
  }

  //Request atma örneği. (dioGet methodunun en sağındaki ProductModel() response da istediğimiz medelin instance'ı)
  @action
  Future<void> getSampleRequest() async {
    isLoading = true;

    final response = await NetworkManager.instance.coreDio
        .fetch<List<ProductModel>, ProductModel>("/getproduct/123",
            type: HttpTypes.GET, parseModel: ProductModel());
    if (response.data is List<ProductModel>) {
    } else {}
    isLoading = false;
  }
}
