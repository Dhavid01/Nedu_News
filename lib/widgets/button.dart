import 'package:flutter/material.dart';
import 'package:nedu_news/core/utils/colors.dart';
import 'package:nedu_news/core/utils/text.dart';

class GenericButton extends StatelessWidget {
  const GenericButton({
    Key? key,
    required this.text,
    this.enabled = true,
    this.big = true,
    this.color,
    this.transparent = false,
    this.onTap,
    this.width,
    this.height,
    this.textColor,
  }) : super(key: key);
  final String text;
  final VoidCallback? onTap;
  final bool enabled;
  final bool big;
  final Color? color;
  final bool transparent;
  final double? width;
  final double? height;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      width: width ?? (transparent ? null : double.infinity),
      height: height ?? (transparent ? null : 56),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: transparent
            ? Theme.of(context).scaffoldBackgroundColor
            : enabled
                ? color ?? AppColors.secondaryColor
                : Colors.grey.shade600,
      ),
      child: TextButton(
        onPressed: enabled ? onTap : null,
        child: big
            ? AppText.buttonTextBig(
                text,
                color: textColor ?? Colors.white,
              )
            : AppText.buttonTextSmall(
                text,
                color: textColor ?? Colors.white,
              ),
      ),
    );
  }
}
