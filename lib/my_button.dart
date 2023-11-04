library my_button;

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.textColor = Colors.black,
      this.fontFamily,
      this.fontWeight = FontWeight.w400,
      this.letterSpacing,
      this.wordSpacing,
      this.fontSize = 12,
      this.fontStyle,
      this.onHover,
      this.onLongPress,
      this.content,
      this.onFocusChange,
      this.backgroundColor,
      this.foregroundColor,
      this.overlayColor,
      this.shadowColor,
      this.surfaceTintColor,
      this.padding,
      this.minimumSize,
      this.fixedSize,
      this.maximumSize,
      this.iconColor,
      this.iconSize,
      this.alignment,
      this.mouseCursor,
      this.outlinedBorder,
      this.borderColor,
      this.borderWidth,
      this.borderStyle,
      this.strokeAlign,
      this.isDisableBorderSide = false});
  final void Function()? onPressed;
  final String text;
  final Color? textColor;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final double? wordSpacing;
  final FontStyle? fontStyle;
  final void Function(bool)? onHover;
  final void Function()? onLongPress;
  final Widget? content;
  final void Function(bool)? onFocusChange;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? overlayColor;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final Size? fixedSize;
  final Size? maximumSize;
  final Color? iconColor;
  final double? iconSize;
  final AlignmentGeometry? alignment;
  final MouseCursor? mouseCursor;
  final OutlinedBorder? outlinedBorder;
  final Color? borderColor;
  final double? borderWidth;
  final BorderStyle? borderStyle;
  final double? strokeAlign;
  final bool? isDisableBorderSide;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      onHover: onHover,
      onLongPress: onLongPress,
      onFocusChange: onFocusChange,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
        foregroundColor: MaterialStatePropertyAll(foregroundColor),
        overlayColor: MaterialStatePropertyAll(overlayColor),
        shadowColor: MaterialStatePropertyAll(shadowColor),
        surfaceTintColor: MaterialStatePropertyAll(surfaceTintColor),
        padding: MaterialStatePropertyAll(padding),
        minimumSize: MaterialStatePropertyAll(minimumSize),
        fixedSize: MaterialStatePropertyAll(fixedSize),
        maximumSize: MaterialStatePropertyAll(maximumSize),
        iconColor: MaterialStatePropertyAll(iconColor),
        iconSize: MaterialStatePropertyAll(iconSize),
        alignment: alignment,
        mouseCursor: MaterialStatePropertyAll(mouseCursor),
        shape: MaterialStatePropertyAll(outlinedBorder),
        side: MaterialStatePropertyAll(
          BorderSide(
            color: borderColor ?? const Color(0xFF000000),
            width: borderWidth ?? 1,
            style: borderStyle ?? BorderStyle.solid,
            strokeAlign: strokeAlign ?? -1.0,
          ),
        ),
      ),
      child: content ??
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontFamily: fontFamily,
              fontSize: fontSize,
              fontWeight: fontWeight,
              letterSpacing: letterSpacing,
              wordSpacing: wordSpacing,
              fontStyle: fontStyle,
            ),
          ),
    );
  }
}
