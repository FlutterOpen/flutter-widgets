///Create by Flutter open
import 'package:flutter/material.dart';
import 'package:flutter_widgets/page/_page.dart';
import 'package:flutter_widgets/util/_util.dart';
import 'package:flutter_widgets/const/_const.dart';

void main() => runApp(FlutterOpenApp());

class FlutterOpenApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: FLUTTER_OPEN,
      theme: ThemeData(
        primaryColor: BLUE_DEEP,
        accentColor: RED,
        brightness: Brightness.light,
      ),
      home: HomePage(),
      routes: {
        PageName.CONTAINER: (context) => ContainerPage(),
        PageName.TEXT: (context) => TextPage(),
        PageName.IMAGE: (context) => ImagePage(),
        PageName.ROW_COLUMN: (context) => RowColumnPage(),
        PageName.ICON: (context) => IconPage(),
        PageName.RAISE_BUTTON: (context) => RaiseButtonPage(),
        PageName.APP_BAR: (context) => AppBarPage(),
        PageName.SCAFFOLD: (context) => ScaffoldPage(),
        PageName.FLUTTER_LOGO: (context) => FlutterLogoPage(),
        PageName.PLACE_HOLDER: (context) => PlaceHolderPage(),
        PageName.BOTTOM_NAV_BAR: (context) => BottomNavBarPage(),
        PageName.TAB_VIEW: (context) => TabBarViewPage(),
        PageName.FLOATING_ACTION_BUTTON: (context) =>
            FloatingActionButtonPage(),
        PageName.DROP_DOWN_BUTTON: (context) => DropDownButtonPage(),
        PageName.POPUP_MENU_BUTTON: (context) => PopupMenuButtonPage(),
        PageName.STACK: (context) => StackPage(),
        PageName.STEPPER: (context) => StepperPage(),
        PageName.SIMPLE_DIALOG: (context) => SimpleDialogPage(),
        PageName.ALERT_DIALOG: (context) => AlertDialogPage(),
        PageName.BOTTOM_SHEET: (context) => BottomSheetPage(),
      },
    );
  }
}
