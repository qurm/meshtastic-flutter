// @dart=2.9
import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

/// utility to see state transitions.
/// source https://bloclibrary.dev/#/flutterweathertutorial

class SimpleBlocObserver extends BlocObserver {
  Logger _logger;

  SimpleBlocObserver(Logger parentLogger)
      : _logger = parentLogger,
        super();

  @override
  void onEvent(Bloc bloc, Object event) {
    // print('onEvent $event');
    _logger.i('BlocObserver: onEvent $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // print('onTransition $transition');
    _logger.i('BlocObserver: onTransition $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // print('onError $error');
    _logger.e('BlocObserver: onError $error');

    super.onError(bloc, error, stackTrace);
  }
}
