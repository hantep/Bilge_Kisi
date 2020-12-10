import 'base_error.dart';
import 'base_exception.dart';

abstract class IResponse<T> {
  bool succeed;
  BaseError error;
  T result;
  DateTime startdate;
  DateTime enddate;
}
