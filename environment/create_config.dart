import 'dart:io';

void createEnvFile(String classDefinition) async {
  File quotesFile = new File('environment/env_config.dart');

  try {
    await quotesFile.writeAsString(classDefinition, mode: FileMode.write);
    print('Data written.');
  } catch (e) {
    print("$e Oops!");
  }
}
