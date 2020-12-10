import '../core/base/model/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends BaseModel {
  int id;
  String name;
  int categoryId;
  int status;
  String price;

  ProductModel({this.id, this.name, this.categoryId, this.status, this.price});

  Map<String, dynamic> toJson() {
    return _$ProductModelToJson(this);
  }

  @override
  fromJson(Map<String, Object> json) {
    return _$ProductModelFromJson(json);
  }
}
