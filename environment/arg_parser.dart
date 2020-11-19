import 'package:args/args.dart';

import 'config_generator.dart';
import 'create_config.dart';

ArgResults argResult;
void main(List<String> args) {
  // ignore: always_specify_types
  final List<String> allowedModes = ['stub', 'test', 'prod'];

  final ArgParser parser = ArgParser()
    ..addOption('mode',
        abbr: 'm',
        allowed: allowedModes,
        callback: (String mode) => print('Initializing $mode'));

  parser.addOption('apiKey', abbr: 'k', defaultsTo: '');
  parser.addOption('amc', abbr: 'a', defaultsTo: 'none');

  argResult = parser.parse(args);

  final String fileString = generateEnvConfig(argResult);
  createEnvFile(fileString);
}
