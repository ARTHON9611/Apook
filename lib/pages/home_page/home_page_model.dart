import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/usable_service_card/usable_service_card_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for UsableServiceCard component.
  late UsableServiceCardModel usableServiceCardModel1;
  // Model for UsableServiceCard component.
  late UsableServiceCardModel usableServiceCardModel2;
  // Model for UsableServiceCard component.
  late UsableServiceCardModel usableServiceCardModel3;
  // Model for UsableServiceCard component.
  late UsableServiceCardModel usableServiceCardModel4;
  // Model for UsableServiceCard component.
  late UsableServiceCardModel usableServiceCardModel5;
  // Model for UsableServiceCard component.
  late UsableServiceCardModel usableServiceCardModel6;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    usableServiceCardModel1 =
        createModel(context, () => UsableServiceCardModel());
    usableServiceCardModel2 =
        createModel(context, () => UsableServiceCardModel());
    usableServiceCardModel3 =
        createModel(context, () => UsableServiceCardModel());
    usableServiceCardModel4 =
        createModel(context, () => UsableServiceCardModel());
    usableServiceCardModel5 =
        createModel(context, () => UsableServiceCardModel());
    usableServiceCardModel6 =
        createModel(context, () => UsableServiceCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    usableServiceCardModel1.dispose();
    usableServiceCardModel2.dispose();
    usableServiceCardModel3.dispose();
    usableServiceCardModel4.dispose();
    usableServiceCardModel5.dispose();
    usableServiceCardModel6.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
