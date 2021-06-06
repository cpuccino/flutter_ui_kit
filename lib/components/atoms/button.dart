import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
  outline,
}

enum ButtonSize {
  xsmall,
  small,
  regular,
  large,
}

// TODO: Implement disabled, loading and clicked
enum ButtonState {
  regular,
  disabled,
  loading,
  tapped,
}

class ButtonConfiguration {
  final String _content;
  String get content => _content;

  final VoidCallback? _onClick;
  VoidCallback? get onClick => _onClick;

  ButtonConfiguration({
    required String content,
    VoidCallback? onClick,
  })  : _content = content,
        _onClick = onClick;
}

class ButtonColor {
  final Color? _contentColor;
  Color? get contentColor => _contentColor;

  final Color? _backgroundColor;
  Color? get backgroundColor => _backgroundColor;

  final Color? _outlineColor;
  Color? get outlineColor => _outlineColor;

  ButtonColor({
    Color? contentColor,
    Color? backgroundColor,
    Color? outlineColor,
  })  : _contentColor = contentColor,
        _backgroundColor = backgroundColor,
        _outlineColor = outlineColor;

  ButtonColor.primary({
    List<ButtonState> buttonStates = const [ButtonState.regular],
  })  : _contentColor = Color(0xFFFFFFFF),
        _backgroundColor =
            buttonStates.contains(ButtonState.disabled) ? Color(0xFFCCE9FF) : Color(0xFF3498FF),
        _outlineColor = Color(0x00000000);

  ButtonColor.secondary({
    List<ButtonState> buttonStates = const [ButtonState.regular],
  })  : _contentColor = Color(0xFFFFFFFF),
        _backgroundColor =
            buttonStates.contains(ButtonState.disabled) ? Color(0xFFFFE6C1) : Color(0xFFFF9800),
        _outlineColor = Color(0x00000000);

  ButtonColor.subdued({
    List<ButtonState> buttonStates = const [ButtonState.regular],
  })  : _contentColor =
            buttonStates.contains(ButtonState.disabled) ? Color(0xFFC5C6C7) : Color(0xFF575757),
        _backgroundColor = Color(0xFFF7F7FA),
        _outlineColor = Color(0x00000000);

  ButtonColor.outline({
    List<ButtonState> buttonStates = const [ButtonState.regular],
  })  : _contentColor =
            buttonStates.contains(ButtonState.disabled) ? Color(0x7A1674E0) : Color(0xFF1675E0),
        _backgroundColor = Color(0xFFFFFFFF),
        _outlineColor =
            buttonStates.contains(ButtonState.disabled) ? Color(0x7A1674E0) : Color(0xFF1675E0);
}

class Button extends StatelessWidget {
  final ButtonColor _buttonColor;
  final ButtonConfiguration _buttonConfiguration;
  final ButtonSize _buttonSize;

  Button({
    required ButtonColor buttonColor,
    required ButtonConfiguration buttonConfiguration,
    ButtonSize buttonSize = ButtonSize.regular,
  })  : _buttonColor = buttonColor,
        _buttonConfiguration = buttonConfiguration,
        _buttonSize = buttonSize;

  Button.primary({
    required String content,
    VoidCallback? onClick,
    ButtonSize buttonSize = ButtonSize.regular,
    List<ButtonState> buttonStates = const [ButtonState.regular],
  })  : _buttonColor = ButtonColor.primary(buttonStates: buttonStates),
        _buttonConfiguration = ButtonConfiguration(
          content: content,
          onClick: onClick,
        ),
        _buttonSize = buttonSize;

  Button.secondary({
    required String content,
    VoidCallback? onClick,
    ButtonSize buttonSize = ButtonSize.regular,
    List<ButtonState> buttonStates = const [ButtonState.regular],
  })  : _buttonColor = ButtonColor.secondary(buttonStates: buttonStates),
        _buttonConfiguration = ButtonConfiguration(
          content: content,
          onClick: onClick,
        ),
        _buttonSize = buttonSize;

  Button.subdued({
    required String content,
    VoidCallback? onClick,
    ButtonSize buttonSize = ButtonSize.regular,
    List<ButtonState> buttonStates = const [ButtonState.regular],
  })  : _buttonColor = ButtonColor.subdued(buttonStates: buttonStates),
        _buttonConfiguration = ButtonConfiguration(
          content: content,
          onClick: onClick,
        ),
        _buttonSize = buttonSize;

  Button.outline({
    required String content,
    VoidCallback? onClick,
    ButtonSize buttonSize = ButtonSize.regular,
    List<ButtonState> buttonStates = const [ButtonState.regular],
  })  : _buttonColor = ButtonColor.outline(buttonStates: buttonStates),
        _buttonConfiguration = ButtonConfiguration(
          content: content,
          onClick: onClick,
        ),
        _buttonSize = buttonSize;

  double _getPadding() {
    if (_buttonSize == ButtonSize.xsmall) return 8;
    if (_buttonSize == ButtonSize.small) return 10;
    if (_buttonSize == ButtonSize.large) return 16;
    return 12;
  }

  double _getFontSize() {
    if (_buttonSize == ButtonSize.xsmall) return 12;
    if (_buttonSize == ButtonSize.small) return 14;
    if (_buttonSize == ButtonSize.large) return 16;
    return 14;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(_getPadding()),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: _buttonColor.backgroundColor,
        border: Border.all(color: _buttonColor.outlineColor ?? Color(0x00000000)),
      ),
      child: Text(
        _buttonConfiguration.content,
        style: TextStyle(
          color: _buttonColor.contentColor,
          fontSize: _getFontSize(),
        ),
      ),
    );
  }
}
