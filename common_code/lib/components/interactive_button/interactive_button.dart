import 'package:common_code/components/interactive_button/interactive_button_style.dart';
import 'package:common_code/generated/l10n.dart';
import 'package:common_code/resources/common_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum ButtonState { init, loading, done, success, error }

class InteractiveButton extends StatefulWidget {
  // type
  final bool isFixedSize;
  // text
  final String label;
  final String? loadingLabel;
  final ButtonType buttonType;
  // actions
  final bool? enabled;
  final Function()? onPressed;
  final Function()? onLongPress;
  final void Function(bool)? onHover;
  final Function()? afterAnimation;
  // colors
  final Color? backgroundColor;
  final Color foregroundColor;
  // final Color? enabledColor;
  // final Color? disabledColor;
  // final Color? loadingColor;
  // final Color? enabledTextColor;
  // final Color? disabledTextColor;
  // final Color? loadingTextColor;
  // shape
  final double height;
  final InteractiveButtonStyle? style;
  // final double? borderRadius;
  // final Widget? shapeWidget;
  final Widget? icon;
  final Widget? loadingWidget;

  const InteractiveButton({
    super.key,
    this.isFixedSize = true,
    this.label = '',
    this.loadingLabel,
    this.buttonType = ButtonType.filled,
    this.enabled,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.afterAnimation,
    this.backgroundColor,
    this.foregroundColor = Colors.white,
    // this.enabledColor,
    // this.disabledColor,
    // this.loadingColor,
    // this.enabledTextColor,
    // this.disabledTextColor,
    // this.loadingTextColor,
    this.height = 30,
    this.style,
    // this.borderRadius,
    // this.shapeWidget,
    this.icon,
    this.loadingWidget,
  });

  @override
  State<InteractiveButton> createState() => _InteractiveButtonState();
}

class _InteractiveButtonState extends State<InteractiveButton> {
  bool isAnimating = true;
  ButtonState state = ButtonState.init;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDone = state == ButtonState.done;
    final isLoading = state == ButtonState.loading;
    bool isStretched = isAnimating || state == ButtonState.init;

    return Container(
      alignment: Alignment.center,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
        height: widget.height,
        width: widget.isFixedSize || state == ButtonState.init ? width : 70,
        onEnd: () => setState(() => isAnimating = !isAnimating),
        child: widget.isFixedSize || isStretched
            ? buildButton(
                label: widget.label,
                size: widget.height,
                icon: widget.icon,
                loadingLabel: widget.loadingLabel,
                loadingWidget: widget.loadingWidget,
                backgroundColor: widget.backgroundColor,
                foregroundColor: widget.foregroundColor,
                style: widget.style,
                isLoading: widget.isFixedSize && isLoading,
                buttonType: widget.buttonType,
                onPressed: () async {
                  if (state != ButtonState.init) return;

                  setState(() => state = ButtonState.loading);
                  // await Future.delayed(const Duration(seconds: 2));
                  if (widget.onPressed != null) await widget.onPressed!();

                  if (!mounted) return;
                  setState(() => state = ButtonState.done);

                  if (!widget.isFixedSize) {
                    await Future.delayed(const Duration(seconds: 2));
                  }

                  if (!mounted) return;
                  setState(() => state = ButtonState.init);
                  if (widget.afterAnimation != null) widget.afterAnimation!();
                },
                onLongPress: () async {
                  if (state != ButtonState.init) return;

                  setState(() => state = ButtonState.loading);
                  // await Future.delayed(const Duration(seconds: 2));
                  if (widget.onLongPress != null) await widget.onLongPress!();

                  if (!mounted) return;
                  setState(() => state = ButtonState.done);

                  if (!widget.isFixedSize) {
                    await Future.delayed(const Duration(seconds: 2));
                  }

                  if (!mounted) return;
                  setState(() => state = ButtonState.init);
                  if (widget.afterAnimation != null) widget.afterAnimation!();
                },
                onHover: widget.onHover,
              )
            : buildSmallButton(isDone, size: widget.height),
      ),
    );
  }
}

enum ButtonType { outline, filled, text }

Widget buildButton({
  required String label,
  String? loadingLabel,
  Widget? icon,
  Widget? loadingWidget,
  Color? backgroundColor,
  Color? foregroundColor,
  InteractiveButtonStyle? style,
  bool isLoading = false,
  double size = 40,
  ButtonType buttonType = ButtonType.filled,
  required VoidCallback? onPressed,
  required VoidCallback? onLongPress,
  required void Function(bool)? onHover,
}) {
  var indicator = Container(
    height: size,
    width: size,
    padding: const EdgeInsets.all(10),
    child: loadingWidget ??
        CircularProgressIndicator(
          strokeWidth: 2,
          color: foregroundColor,
        ),
  );

  var buttonContent = FittedBox(
    fit: BoxFit.none,
    child: Row(
      children: [
        if (isLoading) indicator,
        if (!isLoading && icon != null) icon,
        if ((isLoading && (loadingLabel?.isNotEmpty ?? false)) ||
            (icon != null && label.isNotEmpty))
          const SizedBox(width: 20),
        Text(
          isLoading ? loadingLabel ?? "${S.current.pleaseWait}..." : label,
          style: TextStyle(
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600,
              color: foregroundColor),
        ),
      ],
    ),
  );

  return switch (buttonType) {
    ButtonType.outline => () {
        final buttonStyle = (style ?? const InteractiveButtonStyle())
            .copyWith(shape: style?.shape ?? const StadiumBorder());

        return OutlinedButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          style: _copyStyle(buttonStyle),
          child: buttonContent,
        );
      }(),
    ButtonType.filled => () {
        final buttonStyle = (style ?? const InteractiveButtonStyle()).copyWith(
          backgroundColor: style?.backgroundColor ?? CommonColors.primary,
          foregroundColor: style?.foregroundColor ?? CommonColors.onPrimary,
          shape: style?.shape ?? const StadiumBorder(),
        );

        return ElevatedButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          style: _copyStyle(buttonStyle),
          child: buttonContent,
        );
      }(),
    ButtonType.text => () {
        return TextButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          style: _copyStyle(style),
          child: buttonContent,
        );
      }(),
  };
}

ButtonStyle _copyStyle(InteractiveButtonStyle? style) {
  return ElevatedButton.styleFrom(
    foregroundColor: style?.foregroundColor,
    backgroundColor: style?.backgroundColor,
    shape: style?.shape,
    //
    disabledForegroundColor: style?.disabledForegroundColor,
    disabledBackgroundColor: style?.disabledBackgroundColor,
    shadowColor: style?.shadowColor,
    surfaceTintColor: style?.surfaceTintColor,
    elevation: style?.elevation,
    textStyle: style?.textStyle,
    padding: style?.padding,
    minimumSize: style?.minimumSize,
    fixedSize: style?.fixedSize,
    maximumSize: style?.maximumSize,
    side: style?.side,
    enabledMouseCursor: style?.enabledMouseCursor,
    disabledMouseCursor: style?.disabledMouseCursor,
    visualDensity: style?.visualDensity,
    tapTargetSize: style?.tapTargetSize,
    animationDuration: style?.animationDuration,
    enableFeedback: style?.enableFeedback,
    alignment: style?.alignment,
    splashFactory: style?.splashFactory,
  );
}

@immutable
class ElevatedButtonDefaultColor extends WidgetStateProperty<Color?>
    with Diagnosticable {
  ElevatedButtonDefaultColor(this.color, this.disabled);

  final Color? color;
  final Color? disabled;

  @override
  Color? resolve(Set<WidgetState> states) {
    if (states.contains(WidgetState.disabled)) {
      return disabled;
    }
    return color;
  }
}

// if (isOutlined) { return ; }

// return ;

Widget buildSmallButton(
  bool isDone, {
  double size = 40,
  Color? loadingColor,
  Color doneColor = Colors.green,
}) =>
    Container(
      height: size,
      decoration: BoxDecoration(
        color: isDone ? doneColor : loadingColor ?? CommonColors.primary,
        shape: BoxShape.circle,
      ),
      child: isDone
          ? const Icon(Icons.done, color: Colors.white, size: 20)
          : Center(
              child: Container(
                padding: const EdgeInsets.all(8),
                height: size,
                width: size,
                child: const CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              ),
            ),
    );
