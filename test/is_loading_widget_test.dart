import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:is_loading_widget/is_loading_widget.dart';

/// Main test suite for the IsLoadingWidget class.
void main() {
  /// Test case: IsLoadingWidget renders correctly.
  testWidgets('IsLoadingWidget renders correctly', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: IsLoadingTestWrapper(
          child: IsLoadingWidget(
            isLoading: false,
            child: Container(), // Replace this with your actual child widget.
          ),
        ),
      ),
    );

    // Verify that the widget renders correctly.
    expect(find.byType(IsLoadingWidget), findsOneWidget);
    expect(find.byType(Container), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsNothing);

    // Additional test cases can be added based on specific requirements.
  });

  /// Test case: IsLoadingWidget shows loading indicator when isLoading is true.
  testWidgets('IsLoadingWidget shows loading indicator when isLoading is true',
      (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: IsLoadingTestWrapper(
          child: IsLoadingWidget(
            isLoading: true,
            child: Container(), // Replace this with your actual child widget.
          ),
        ),
      ),
    );

    // Verify that the loading indicator is displayed.
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Additional test cases can be added based on specific requirements.
  });
}

/// Wrapper widget for testing IsLoadingWidget.
class IsLoadingTestWrapper extends StatelessWidget {
  /// The child widget to be wrapped for testing.
  final Widget child;

  /// Constructor for IsLoadingTestWrapper.
  ///
  /// [child]: The child widget to be wrapped for testing.
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
