import 'package:intl/intl.dart';

Map<String, dynamic> getdate(int timestamp) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  String formattedDate = DateFormat('dd MMM yyyy').format(dateTime);
  String formattedTime = DateFormat('h:mm a').format(dateTime);
  return {
    "dateTime": dateTime,
    "formattedDate": "$formattedDate | $formattedTime"
  };
}
