import 'package:flutter/material.dart';

enum AlertType {
  info,
  success,
  warning,
  error,
}

class AlertConfiguration {
  final _content;
  String get content => _content;

  final _icon;
  Icon get icon => _icon;

  final _onClick;
  VoidCallback? get onClick => _onClick;

  AlertConfiguration({
    required String content,
    required Icon icon,
    VoidCallback? onClick,
  })  : _content = content,
        _icon = icon,
        _onClick = onClick;
}

class AlertStyle {
  final _contentColor;
  Color get contentColor => _contentColor;

  final _iconColor;
  Color get iconColor => _iconColor;

  final _backgroundColor;
  Color get backgroundColor => _backgroundColor;

  AlertStyle({
    required Color contentColor,
    required Color iconColor,
    required Color backgroundColor,
  })  : _contentColor = contentColor,
        _iconColor = iconColor,
        _backgroundColor = backgroundColor;

  AlertStyle.info()
      : _contentColor = Color(0xFF575757),
        _iconColor = Color(0xFF4A94EC),
        _backgroundColor = Color(0xFFE9F5FE);

  AlertStyle.success()
      : _contentColor = Color(0xFF575757),
        _iconColor = Color(0xFF67AD5B),
        _backgroundColor = Color(0xFFEDFAE1);

  AlertStyle.warning()
      : _contentColor = Color(0xFF575757),
        _iconColor = Color(0xFFF5B63F),
        _backgroundColor = Color(0xFFFFF9E6);

  AlertStyle.error()
      : _contentColor = Color(0xFF575757),
        _iconColor = Color(0xFFE15141),
        _backgroundColor = Color(0xFFFDE9EF);
}

class Alert extends StatelessWidget {
  final AlertStyle _alertStyle;
  final AlertConfiguration _alertConfiguration;

  Alert({
    required AlertStyle alertStyle,
    required AlertConfiguration alertConfiguration,
  })  : _alertStyle = alertStyle,
        _alertConfiguration = alertConfiguration;

  Alert.info({
    required String content,
    VoidCallback? onClick,
  })  : _alertConfiguration = AlertConfiguration(
          content: content,
          icon: Icon(Icons.info),
          onClick: onClick,
        ),
        _alertStyle = AlertStyle.info();

  Alert.success({
    required String content,
    VoidCallback? onClick,
  })  : _alertConfiguration = AlertConfiguration(
          content: content,
          icon: Icon(Icons.check_circle),
          onClick: onClick,
        ),
        _alertStyle = AlertStyle.success();

  Alert.warning({
    required String content,
    VoidCallback? onClick,
  })  : _alertConfiguration = AlertConfiguration(
          content: content,
          icon: Icon(Icons.warning_rounded),
          onClick: onClick,
        ),
        _alertStyle = AlertStyle.warning();

  Alert.error({
    required String content,
    VoidCallback? onClick,
  })  : _alertConfiguration = AlertConfiguration(
          content: content,
          icon: Icon(Icons.highlight_off),
          onClick: onClick,
        ),
        _alertStyle = AlertStyle.error();

  Icon get alertIcon => Icon(
        _alertConfiguration.icon.icon,
        color: _alertStyle.iconColor,
        size: 18,
      );

  Text get content => Text(
        _alertConfiguration.content,
        style: TextStyle(
          color: _alertStyle.contentColor,
          fontSize: 14,
        ),
      );

  Icon get closeIcon => Icon(
        Icons.close,
        color: _alertStyle.iconColor,
        size: 17,
      );

  List<BoxShadow> get alertBoxShadows => [
        BoxShadow(
          offset: Offset(4, 4),
          blurRadius: 4,
          color: Colors.black.withOpacity(0.12),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: _alertStyle.backgroundColor,
        boxShadow: alertBoxShadows,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          alertIcon,
          SizedBox(width: 10),
          content,
          SizedBox(width: 10),
          GestureDetector(
            onTap: _alertConfiguration.onClick,
            child: closeIcon,
          ),
        ],
      ),
    );
  }
}
