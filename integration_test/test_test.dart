import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:reubey_portfolio/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('failing test example', (tester) async {
    app.main();
    await tester.pumpAndSettle();
    expect(find.text("Hi, I'm Reubey!"), findsOneWidget);
  });
}

//Console must be used to run Web tests
//Launch the ChromeDriver using ./chromedriver --port=4444
//To run this test, execute flutter drive --driver=test_driver/integration_test.dart --target=integration_test/test_test.dart -d web-server