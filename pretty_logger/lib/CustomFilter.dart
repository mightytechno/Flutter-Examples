import 'package:logger/logger.dart';

class CustomFilter extends LogFilter{
  
  @override
  bool shouldLog(LogEvent event) {
    // TODO: implement shouldLog
    return event.level != Level.warning;
  }
}