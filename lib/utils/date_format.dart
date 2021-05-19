import 'package:intl/intl.dart';

String dateMonthYearFormat(DateTime dateTime) {
  final DateFormat formatter = DateFormat('d MMMM, y');
  return formatter.format(dateTime);
}
