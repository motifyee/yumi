import 'package:flutter/material.dart';
import 'package:yumi/statics/theme_statics.dart';

enum ButtonState { init, loading, done, success, error }

class InteractiveButton extends StatefulWidget {
  // type
  final bool isFixedSize;
  // text
  final String label;
  final String? loadingLabel;
  // actions
  final bool? enabled;
  final Function()? onPressed;
  final Function()? afterAnimation;
  // colors
  final Color? backgroundColor;
  final Color? foregroundColor;
  // final Color? enabledColor;
  // final Color? disabledColor;
  // final Color? loadingColor;
  // final Color? enabledTextColor;
  // final Color? disabledTextColor;
  // final Color? loadingTextColor;
  // shape
  final double height;
  // final double? borderRadius;
  // final Widget? shapeWidget;
  final Widget? icon;
  final Widget? loadingWidget;

  const InteractiveButton({
    super.key,
    this.isFixedSize = true,
    this.label = '',
    this.loadingLabel,
    this.enabled,
    this.onPressed,
    this.afterAnimation,
    this.backgroundColor,
    this.foregroundColor,
    // this.enabledColor,
    // this.disabledColor,
    // this.loadingColor,
    // this.enabledTextColor,
    // this.disabledTextColor,
    // this.loadingTextColor,
    this.height = 30,
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
                isLoading: widget.isFixedSize && isLoading,
                onPressed: () async {
                  if (state != ButtonState.init) return;

                  setState(() => state = ButtonState.loading);
                  // await Future.delayed(const Duration(seconds: 2));
                  await widget.onPressed!();
                  setState(() => state = ButtonState.done);

                  if (!widget.isFixedSize) {
                    await Future.delayed(const Duration(seconds: 2));
                  }

                  if (!mounted) return;
                  setState(() => state = ButtonState.init);
                  if (widget.afterAnimation != null) widget.afterAnimation!();
                },
              )
            : buildSmallButton(isDone, size: widget.height),
      ),
    );
  }
}

Widget buildButton({
  required String label,
  String? loadingLabel,
  Widget? icon,
  Widget? loadingWidget,
  Color? backgroundColor,
  Color? foregroundColor,
  bool isLoading = false,
  double size = 40,
  bool isOutlined = false,
  required VoidCallback? onPressed,
}) {
  var indicator = Container(
    height: size,
    width: size,
    padding: const EdgeInsets.all(10),
    child: loadingWidget ??
        const CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.white,
        ),
  );

  var buttonContent = FittedBox(
    fit: BoxFit.none,
    child: Row(
      children: [
        if (isLoading) indicator,
        if (!isLoading && icon != null) icon,
        if (isLoading || icon != null) const SizedBox(width: 20),
        Text(
          isLoading ? loadingLabel ?? 'Please Wait...' : label,
          style: const TextStyle(
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );

  if (isOutlined) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
      ),
      child: buttonContent,
    );
  }

  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor ?? ThemeSelector.colors.primary,
      foregroundColor: foregroundColor ?? ThemeSelector.colors.onPrimary,
      shape: const StadiumBorder(),
    ),
    child: buttonContent,
  );
}

Widget buildSmallButton(
  bool isDone, {
  double size = 40,
  Color? loadingColor,
  Color doneColor = Colors.green,
}) =>
    Container(
        height: size,
        decoration: BoxDecoration(
          color:
              isDone ? doneColor : loadingColor ?? ThemeSelector.colors.primary,
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
              ));
