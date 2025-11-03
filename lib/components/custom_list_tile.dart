import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final bool dense;
  final bool enabled;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;
  final Color? tileColor;
  final Color? selectedColor;
  final bool selected;
  final EdgeInsetsGeometry contentPadding;
  final double horizontalTitleGap;
  final ShapeBorder? shape;

  const CustomListTile({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.dense = false,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.tileColor,
    this.selectedColor,
    this.selected = false,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 0,
      vertical: 4,
    ),
    this.horizontalTitleGap = 8.0,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final listTileTheme = ListTileTheme.of(context);

    final backgroundColor = selected
        ? (selectedColor ??
              listTileTheme.selectedTileColor ??
              theme.colorScheme.primary.withValues(alpha: 0.12))
        : (tileColor ?? listTileTheme.tileColor);

    Widget? leadingWidget = leading;
    if (leadingWidget != null) {
      leadingWidget = SizedBox(
        width: dense ? 40.0 : 56.0,
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: leadingWidget,
        ),
      );
    }

    final trailingStyle =
        listTileTheme.leadingAndTrailingTextStyle ?? textTheme.bodySmall;

    Widget? trailingWidget = trailing;
    if (trailingWidget != null) {
      trailingWidget = Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: DefaultTextStyle(
          style: trailingStyle ?? const TextStyle(),
          child: trailingWidget,
        ),
      );
    }

    final titleStyle =
        listTileTheme.titleTextStyle ??
        (dense ? textTheme.bodyMedium : textTheme.titleMedium);

    final subtitleStyle =
        listTileTheme.subtitleTextStyle ??
        (dense ? textTheme.bodySmall : textTheme.bodyMedium);

    Widget titleWidget = DefaultTextStyle(
      style: titleStyle ?? const TextStyle(),
      child: title ?? const SizedBox.shrink(),
    );

    Widget? subtitleWidget;
    if (subtitle != null) {
      subtitleWidget = DefaultTextStyle(
        style: subtitleStyle ?? const TextStyle(),
        child: subtitle!,
      );
    }

    Widget content = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (leadingWidget != null) leadingWidget,
        if (leadingWidget != null) SizedBox(width: horizontalTitleGap),
        Expanded(
          child: subtitleWidget != null
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleWidget,
                    const SizedBox(height: 2.0),
                    subtitleWidget,
                  ],
                )
              : titleWidget,
        ),
        if (trailingWidget != null) trailingWidget,
      ],
    );

    Widget result = Container(
      padding: contentPadding,
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: shape ?? const RoundedRectangleBorder(),
      ),
      child: content,
    );

    if (enabled && (onTap != null || onLongPress != null)) {
      result = InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        customBorder: shape,
        child: result,
      );
    }

    return result;
  }
}
