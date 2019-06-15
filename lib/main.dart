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
        PageName.EXPANSION_PANEL: (context) => ExpansionPage(),
        PageName.SNACK_BAR: (context) => SnackPage(),
        PageName.TEXT_FIELD: (context) => TextFieldPage(),
        PageName.CHIP: (context) => ChipPage(),
        PageName.SLIDER: (context) => SliderPage(),
        PageName.CHECK_BOX: (context) => CheckBoxPage(),
        PageName.CARD: (context) => CardPage(),
        PageName.TOOLTIP: (context) => TooltipPage(),
        PageName.DATA_TABLE: (context) => DataTablePage(),
        PageName.PROGRESS_INDICATOR: (context) => ProgressIndicatorPage(),
        PageName.MIX_SINGLE_LAYOUT: (context) => MixPage(),
        PageName.INDEX_STACK: (context) => IndexStackPage(),
        PageName.EXPANDED: (context) => ExpandPage(),
        PageName.FLOW: (context) => FlowPage(),
        PageName.LAYOUT: (context) => LayoutPage(),
        PageName.METHOD_CHANNEL: (context) => MethodChannelPage(),
        PageName.ASSET_PAGE: (context) => AssetsPage(),
        PageName.ANIMATION: (context) => AnimationPage(),
        PageName.ANIM_CONTAINER: (context) => AnimatedContainerPage(),
        PageName.ANIM_CROSS_FADE: (context) => AnimCrossFadePage(),
        PageName.ANIM_HERO: (context) => HeroPage(),
        PageName.ANIM_FADE_TRANS: (context) => FadeTransitionPage(),
        PageName.ANIM_POSITION_TRANS: (context) => PositionTransitionPage(),
        PageName.ANIM_ROTATION: (context) => RotationPage(),
        PageName.ANIM_DEFAULT_TEXT: (context) => DefaultTextPage(),
        PageName.ANIM_LIST: (context) => AnimListPage(),
        PageName.ANIM_MODAL_BARRIER: (context) => AnimatedModalPage(),
        PageName.ANIM_SIZE: (context) => AnimSizePage(),
        PageName.ANIM_WIDGET: (context) => AnimWidgetPage(),
        PageName.ANIM_PYH_MODEL: (context) => PyhModelPage(),
        PageName.ANIM_OPACITY: (context) => AnimOpacityPage(),
        PageName.INTER_DRAG: (context) => DraggablePage(),
        PageName.INTER_GESTURE: (context) => GesturePage(),
        PageName.INTER_DISMISSIBLE: (context) => DismissiblePage(),
        PageName.INTER_POINTER: (context) => PointerPage(),
        PageName.INTER_NAV: (context) => NavigatorPage(),
        PageName.ASYNC_FUTURE: (context) => FuturePage(),
        PageName.ASYNC_STREAM_BUILDER: (context) => StreamBuilderPage(),
        PageName.PAINT_OPACITY: (context) => PaintingPage(),
      },
    );
  }
}
