
import 'package:intl/intl.dart';

String getNaira(){
  final format = NumberFormat.simpleCurrency(name: "ZAR");
  return format.currencySymbol;
}