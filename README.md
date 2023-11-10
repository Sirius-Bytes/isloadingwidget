# is_loading_widget

A Flutter package for handling loading states by overlaying a loading indicator on top of a child widget.

## Features

- Overlay loading indicator on top of a child widget.
- Customize background color, visibility, and whether to build the child while loading.

## Getting started

To use this package, add `is_loading_widget` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  is_loading_widget: ^0.0.1

Then, run:
    flutter pub get
Usage
    Import the package in your Dart code:
        import 'package:is_loading_widget/is_loading_widget.dart';
Use the IsLoadingWidget in your widget tree:
    IsLoadingWidget(
  isLoading: true, // Set to true to show the loading indicator.
  child: YourChildWidget(), // Your main child widget.
)
Additional information
For more details, check the example folder.

For information on how to contribute to the package, see CONTRIBUTING.md.
If you encounter any issues or have questions, feel free to file an issue.
Your contributions are welcome! Please follow our code of conduct.

