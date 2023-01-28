import 'package:injectable/injectable.dart';
import 'package:mediatr/mediatr.dart';

@module
abstract class MediatorModule {
  @singleton
  Mediator get mediator => Mediator(Pipeline());
}
