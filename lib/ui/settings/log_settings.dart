// @dart=2.9
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
// import 'package:logger_flutter/logger_flutter.dart';

// logger.v("Verbose log");
// logger.d("Debug log");
// logger.i("Info log");
// logger.w("Warning log");
// logger.e("Error log");
// logger.wtf("What a terrible failure log");

Logger appLogger = Logger(
  // output: ExampleLogOutput(),
  level: Level.debug,
  printer: PrettyPrinter(
    methodCount: 4, // number of method calls to be displayed
    errorMethodCount: 8,
    printTime: true,
  ),
);

Logger userLogger =
    // sl.registerSingleton<Logger>(
    Logger(
  // output: ExampleLogOutput(),
  level: Level.debug,
  // printer: SimpleLogPrinter(''),
  printer: PrettyPrinter(
    methodCount: 0, // number of method calls to be displayed
    errorMethodCount: 4,
    printTime: true,
  ),
);
// instanceName: 'userLogger');

//used in logger_flutter
/* class ExampleLogOutput extends ConsoleOutput {
  @override
  void output(OutputEvent event) {
    super.output(event);
    LogConsole.add(event);
  }
} */

// see https://github.com/leisim/logger/issues/31

class SimpleLogPrinter extends LogPrinter {
  final String className;
  SimpleLogPrinter(this.className);

  @override
  List<String/*!*/> log(LogEvent event) {
    AnsiColor color = PrettyPrinter.levelColors[event.level];
    String/*!*/ emoji = PrettyPrinter.levelEmojis[event.level];
    return [color('$emoji $className - ${event.message}')];
  }
}
