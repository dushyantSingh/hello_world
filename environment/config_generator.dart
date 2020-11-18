import 'package:args/args.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

String generateEnvConfig(ArgResults argResults) {
  var mode = 'mode';
  var apiKey = 'apiKey';
  var amc = 'amc';

  final config = Class((c) => c
    ..name = 'EnvConfig'
    ..fields.addAll([
      Field(
        (f) => f
          ..name = 'mode'
          ..type = Reference('String')
          ..assignment = Code('\'${argResults[mode]}\'')
          ..static = true
          ..modifier = FieldModifier.constant,
      ),
      Field(
        (f) => f
          ..name = 'apiKey'
          ..type = Reference('String')
          ..assignment = Code('\'${argResults[apiKey]}\'')
          ..static = true
          ..modifier = FieldModifier.constant,
      ),
      Field(
        (f) => f
          ..name = 'amc'
          ..type = Reference('String')
          ..assignment = Code('\'${argResults[amc]}\'')
          ..static = true
          ..modifier = FieldModifier.constant,
      ),
    ]));

  final emitter = DartEmitter();

  return DartFormatter().format('${config.accept(emitter)}');
}
