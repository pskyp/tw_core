import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const EdgeInsets _defaultInsetPadding =
    EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0);

class TWWebNotificationDialogState extends StatelessWidget {
  const TWWebNotificationDialogState({
    Key? key,
    this.backgroundColor,
    this.elevation,
    this.insetAnimationDuration = const Duration(milliseconds: 100),
    this.insetAnimationCurve = Curves.decelerate,
    this.insetPadding = _defaultInsetPadding,
    this.clipBehavior = Clip.none,
    this.shape,
    this.child,
  }) : super(key: key);
  final Color? backgroundColor;
  final double? elevation;
  final Duration insetAnimationDuration;
  final Curve insetAnimationCurve;
  final EdgeInsets? insetPadding;
  final Clip clipBehavior;
  final ShapeBorder? shape;
  final Widget? child;

  static const RoundedRectangleBorder _defaultDialogShape =
      RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)));
  static const double _defaultElevation = 24.0;

  @override
  Widget build(BuildContext context) {
    final DialogTheme dialogTheme = DialogTheme.of(context);
    double height = MediaQuery.of(context).size.width * 0.1 > 70
        ? 70
        : MediaQuery.of(context).size.width * 0.1;

    return MediaQuery.removeViewInsets(
      removeLeft: true,
      removeTop: true,
      removeRight: true,
      removeBottom: true,
      context: context,
      child: Stack(
        children: [
          Positioned(
            top: height - 5,
            right: height * 1.7 + 50,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 280.0),
              child: Material(
                color: backgroundColor ??
                    dialogTheme.backgroundColor ??
                    Theme.of(context).dialogBackgroundColor,
                elevation:
                    elevation ?? dialogTheme.elevation ?? _defaultElevation,
                shape: shape ?? dialogTheme.shape ?? _defaultDialogShape,
                type: MaterialType.card,
                clipBehavior: clipBehavior,
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
