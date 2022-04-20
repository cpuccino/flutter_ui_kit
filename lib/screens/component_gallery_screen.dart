import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/components/atoms/alert.dart' as ui;
import 'package:flutter_ui_kit/components/atoms/button.dart' as ui;

class ComponentGalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(40),
          alignment: Alignment.center,
          // child: Text('Component Gallery Screen'),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                ui.Alert.info(
                  content: 'Info alert',
                  onClick: () => print('info clicked'),
                  onDismiss: () => print('exit info'),
                ),
                SizedBox(height: 10),
                ui.Alert.success(
                  content: 'Success alert',
                  onClick: () => print('success clicked'),
                  onDismiss: () => print('exit success'),
                ),
                SizedBox(height: 10),
                ui.Alert.warning(
                  content: 'Warning alert',
                  onClick: () => print('warning clicked'),
                  onDismiss: () => print('exit warning'),
                ),
                SizedBox(height: 10),
                ui.Alert.error(
                  content: 'Error alert',
                  onClick: () => print('exit clicked'),
                  onDismiss: () => print('exit error'),
                ),
                SizedBox(height: 50),
                ui.Button.primary(
                  content: 'Primary xsmall',
                  onClick: () => print('primary xsmall clicked'),
                  buttonSize: ui.ButtonSize.xsmall,
                ),
                SizedBox(height: 10),
                ui.Button.primary(
                  content: 'Primary small',
                  onClick: () => print('primary small clicked'),
                  buttonSize: ui.ButtonSize.small,
                ),
                SizedBox(height: 10),
                ui.Button.primary(
                  content: 'Primary regular',
                  onClick: () => print('primary regular clicked'),
                  buttonSize: ui.ButtonSize.regular,
                ),
                SizedBox(height: 10),
                ui.Button.primary(
                  buttonStates: [ui.ButtonState.disabled],
                  content: 'Primary regular disabled',
                  onClick: () => print('primary regular disabled clicked'),
                  buttonSize: ui.ButtonSize.regular,
                  disabled: true,
                ),
                SizedBox(height: 10),
                ui.Button.primary(
                  content: 'Primary large',
                  onClick: () => print('primary large clicked'),
                  buttonSize: ui.ButtonSize.large,
                ),
                SizedBox(height: 50),
                ui.Button.secondary(
                  content: 'Secondary xsmall',
                  onClick: () => print('secondary xsmall clicked'),
                  buttonSize: ui.ButtonSize.xsmall,
                ),
                SizedBox(height: 10),
                ui.Button.secondary(
                  content: 'Secondary small',
                  onClick: () => print('secondary small clicked'),
                  buttonSize: ui.ButtonSize.small,
                ),
                SizedBox(height: 10),
                ui.Button.secondary(
                  content: 'Secondary regular',
                  onClick: () => print('secondary regular clicked'),
                  buttonSize: ui.ButtonSize.regular,
                ),
                SizedBox(height: 10),
                ui.Button.secondary(
                  buttonStates: [ui.ButtonState.disabled],
                  content: 'Secondary regular disabled',
                  onClick: () => print('secondary regular disabled clicked'),
                  buttonSize: ui.ButtonSize.regular,
                ),
                SizedBox(height: 10),
                ui.Button.secondary(
                  content: 'Secondary large',
                  onClick: () => print('secondary large clicked'),
                  buttonSize: ui.ButtonSize.large,
                ),
                SizedBox(height: 50),
                ui.Button.subdued(
                  content: 'Subdued xsmall',
                  onClick: () => print('subdued xsmall clicked'),
                  buttonSize: ui.ButtonSize.xsmall,
                ),
                SizedBox(height: 10),
                ui.Button.subdued(
                  content: 'Subdued small',
                  onClick: () => print('subdued small clicked'),
                  buttonSize: ui.ButtonSize.small,
                ),
                SizedBox(height: 10),
                ui.Button.subdued(
                  content: 'Subdued regular',
                  onClick: () => print('subdued regular clicked'),
                  buttonSize: ui.ButtonSize.regular,
                ),
                SizedBox(height: 10),
                ui.Button.subdued(
                  buttonStates: [ui.ButtonState.disabled],
                  content: 'Subdued regular disabled',
                  onClick: () => print('subdued regular disabled clicked'),
                  buttonSize: ui.ButtonSize.regular,
                ),
                SizedBox(height: 10),
                ui.Button.subdued(
                  content: 'Subdued large',
                  onClick: () => print('subdued large clicked'),
                  buttonSize: ui.ButtonSize.large,
                ),
                SizedBox(height: 50),
                ui.Button.outline(
                  content: 'Outline xsmall',
                  onClick: () => print('outline xsmall clicked'),
                  buttonSize: ui.ButtonSize.xsmall,
                ),
                SizedBox(height: 10),
                ui.Button.outline(
                  content: 'Outline small',
                  onClick: () => print('outline small clicked'),
                  buttonSize: ui.ButtonSize.small,
                ),
                SizedBox(height: 10),
                ui.Button.outline(
                  content: 'Outline regular',
                  onClick: () => print('outline regular clicked'),
                  buttonSize: ui.ButtonSize.regular,
                ),
                SizedBox(height: 10),
                ui.Button.outline(
                  buttonStates: [ui.ButtonState.disabled],
                  content: 'Outline regular disabled',
                  onClick: () => print('outline regular disabled clicked'),
                  buttonSize: ui.ButtonSize.regular,
                ),
                SizedBox(height: 10),
                ui.Button.outline(
                  content: 'Outline large',
                  onClick: () => print('outline large clicked'),
                  buttonSize: ui.ButtonSize.large,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
