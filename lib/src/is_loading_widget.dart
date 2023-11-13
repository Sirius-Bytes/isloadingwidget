import 'package:flutter/material.dart';

/// A widget designed to handle loading states by overlaying a loading indicator on top of the child widget.
class IsLoadingWidget extends StatelessWidget {
  /// Background color of the overlay. Defaults to white.
  final Color backGroundColor;

  /// Whether to build the child widget while loading. Defaults to true.
  final bool buildChildWhileLoading;

  /// The main child widget to display.
  final Widget child;

  /// The visibility of the child widget when loading. Defaults to 0.50.
  final double childVisibility;

  /// Flag indicating whether the widget is in a loading state.
  final bool isLoading;

  /// Constructor to initialize the widget with required parameters.
  ///
  /// [isLoading]: Flag indicating whether the widget is in a loading state.
  /// [child]: The main child widget to display.
  /// [childVisibility]: The visibility of the child widget when loading. Defaults to 0.50.
  /// [buildChildWhileLoading]: Whether to build the child widget while loading. Defaults to false.
  /// [backGroundColor]: Background color of the overlay. Defaults to white.
  const IsLoadingWidget({
    Key? key,
    required this.isLoading,
    required this.child,
    this.childVisibility = 0.50,
    this.buildChildWhileLoading = false,
    this.backGroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Stack widget is used to overlay components on top of each other.
    return Stack(
      children: [
        // If 'buildChildWhileLoading' is true or not in loading state, display the child widget.
        (buildChildWhileLoading)
            ? child
            // If 'buildChildWhileLoading' is false and in loading state, display a container with the background color.
            : (isLoading)
                ? Container(
                    color: backGroundColor,
                  )
                // If not in loading state, display the child widget.
                : child,

        // Overlay to dim the child widget when in loading state.
        if (isLoading)
          Opacity(
            opacity: (isLoading) ? 1 - childVisibility : 0,
            child: Container(
              color: backGroundColor,
            ),
          ),

        // Loading indicator displayed at the center when in loading state.
        if (isLoading)
          const Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
