import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:is_loading_widget/is_loading_widget.dart';

void main() {
  testWidgets('IsLoadingWidget renders correctly', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: IsLoadingTestWrapper(
          child: IsLoadingWidget(
            isLoading: false,
            child:
                Container(), // You can replace this with your actual child widget.
          ),
        ),
      ),
    );

    // Verify that the widget renders correctly.
    expect(find.byType(IsLoadingWidget), findsOneWidget);
    expect(find.byType(Container), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsNothing);

    // You can add more test cases based on your specific requirements.
  });

  testWidgets('IsLoadingWidget shows loading indicator when isLoading is true',
      (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: IsLoadingTestWrapper(
          child: IsLoadingWidget(
            isLoading: true,
            child:
                Container(), // You can replace this with your actual child widget.
          ),
        ),
      ),
    );

    // Verify that the loading indicator is displayed.
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // You can add more test cases based on your specific requirements.
  });
}

class IsLoadingTestWrapper extends StatelessWidget {
  final Widget child;

  const IsLoadingTestWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: child,
      ),
    );
  }
}
