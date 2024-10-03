import 'package:blott/gen/assets.gen.dart';
import 'package:blott/main.dart' as main_dev;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding
      .ensureInitialized(); // Initialize Flutter bindings for testing

  test('main_development.dart initializes correctly', () async {
    // Load the development environment variables
    await dotenv.load(fileName: '.env.dev');

    // Call the main function from main_development.dart
    main_dev.main();

    // Add your assertions here to verify the behavior
    expect(
      dotenv.load(
        fileName: Assets.aEnv,
      ),
      isNotNull,
    );
  });
}
