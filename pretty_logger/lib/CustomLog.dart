import 'package:logger/logger.dart';

class CustomLog extends LogPrinter{

  @override
  void log(LogEvent event) {
    var emoji = PrettyPrinter.levelEmojis[event.level];
    println('$emoji : ${event.message} ' );
    println('${event.message} ' );
  }

}