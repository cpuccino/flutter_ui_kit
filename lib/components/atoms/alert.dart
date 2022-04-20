import 'package:flutter/material.dart';

enum AlertType {
  info,
  success,
  warning,
  error,
}

class AlertConfiguration {
  final String _content;
  String get content => _content;

  final Icon _icon;
  Icon get icon => _icon;

  final VoidCallback? _onClick;
  VoidCallback? get onClick => _onClick;

  final VoidCallback? _onDismiss;
  VoidCallback? get onDismiss => _onDismiss;

  AlertConfiguration({
    required String content,
    required Icon icon,
    VoidCallback? onClick,
    VoidCallback? onDismiss,
  })  : _content = content,
        _icon = icon,
        _onClick = onClick,
        _onDismiss = onDismiss;
}

class AlertColor {
  final Color? _contentColor;
  Color? get contentColor => _contentColor;

  final Color? _iconColor;
  Color? get iconColor => _iconColor;

  final Color? _backgroundColor;
  Color? get backgroundColor => _backgroundColor;

  AlertColor({
    Color? contentColor,
    Color? iconColor,
    Color? backgroundColor,
  })  : _contentColor = contentColor,
        _iconColor = iconColor,
        _backgroundColor = backgroundColor;

  AlertColor.info()
      : _contentColor = Color(0xFF575757),
        _iconColor = Color(0xFF4A94EC),
        _backgroundColor = Color(0xFFE9F5FE);

  AlertColor.success()
      : _contentColor = Color(0xFF575757),
        _iconColor = Color(0xFF67AD5B),
        _backgroundColor = Color(0xFFEDFAE1);

  AlertColor.warning()
      : _contentColor = Color(0xFF575757),
        _iconColor = Color(0xFFF5B63F),
        _backgroundColor = Color(0xFFFFF9E6);

  AlertColor.error()
      : _contentColor = Color(0xFF575757),
        _iconColor = Color(0xFFE15141),
        _backgroundColor = Color(0xFFFDE9EF);
}

class Alert extends StatelessWidget {
  final AlertColor _alertColor;
  final AlertConfiguration _alertConfiguration;

  Alert({
    required AlertColor alertColor,
    required AlertConfiguration alertConfiguration,
  })  : _alertColor = alertColor,
        _alertConfiguration = alertConfiguration;

  Alert.info({
    required String content,
    VoidCallback? onClick,
    VoidCallback? onDismiss,
  })  : _alertConfiguration = AlertConfiguration(
          content: content,
          icon: Icon(Icons.info),
          onClick: onClick,
          onDismiss: onDismiss,
        ),
        _alertColor = AlertColor.info();

  Alert.success({
    required String content,
    VoidCallback? onClick,
    VoidCallback? onDismiss,
  })  : _alertConfiguration = AlertConfiguration(
          content: content,
          icon: Icon(Icons.check_circle),
          onClick: onClick,
          onDismiss: onDismiss,
        ),
        _alertColor = AlertColor.success();

  Alert.warning({
    required String content,
    VoidCallback? onClick,
    VoidCallback? onDismiss,
  })  : _alertConfiguration = AlertConfiguration(
          content: content,
          icon: Icon(Icons.warning_rounded),
          onClick: onClick,
          onDismiss: onDismiss,
        ),
        _alertColor = AlertColor.warning();

  Alert.error({
    required String content,
    VoidCallback? onClick,
    VoidCallback? onDismiss,
  })  : _alertConfiguration = AlertConfiguration(
          content: content,
          icon: Icon(Icons.highlight_off),
          onClick: onClick,
          onDismiss: onDismiss,
        ),
        _alertColor = AlertColor.error();

  Icon _getAlertIcon() => Icon(
        _alertConfiguration.icon.icon,
        color: _alertColor.iconColor,
        size: 18,
      );

  Text _getContent() => Text(
        _alertConfiguration.content,
        style: TextStyle(
          color: _alertColor.contentColor,
          fontSize: 14,
        ),
      );

  Icon _getCloseIcon() => Icon(
        Icons.close,
        color: _alertColor.iconColor,
        size: 17,
      );

  List<BoxShadow> _getBoxShadows() => [
        BoxShadow(
          offset: Offset(4, 4),
          blurRadius: 4,
          color: Colors.black.withOpacity(0.12),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _alertConfiguration.onClick,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: _alertColor.backgroundColor,
          boxShadow: _getBoxShadows(),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _getAlertIcon(),
            SizedBox(width: 10),
            _getContent(),
            SizedBox(width: 10),
            GestureDetector(
              onTap: _alertConfiguration.onDismiss,
              child: _getCloseIcon(),
            ),
          ],
        ),
      ),
    );
  }
}
