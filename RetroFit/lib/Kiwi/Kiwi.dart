import 'package:kiwi/kiwi.dart';
import 'package:retro/main.dart';
//
part 'Kiwi.g.dart';

abstract class Injector {
  @Register.factory(StorySet)
  void configure();
}

void setup() {
  var injector = _$Injector();
  injector.configure();
}