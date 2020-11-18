import 'package:args/args.dart';

import 'config_generator.dart';
import 'create_config.dart';

ArgResults argResult;
void main(List<String> args) {
  final parser = new ArgParser()
    ..addOption('mode',
        abbr: 'm',
        allowed: ['stub', 'test', 'prod'],
        callback: (mode) => print('Initializing $mode'));

  parser.addOption('apiKey', abbr: 'k', defaultsTo: '');
  parser.addOption('amc', abbr: 'a', defaultsTo: 'none');

  argResult = parser.parse(args);

  final fileString = generateEnvConfig(argResult);
  createEnvFile(fileString);
}
