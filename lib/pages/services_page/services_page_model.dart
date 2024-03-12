import '/components/services_type_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/time_slot/time_slot_widget.dart';
import 'services_page_widget.dart' show ServicesPageWidget;
import 'package:flutter/material.dart';

class ServicesPageModel extends FlutterFlowModel<ServicesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ServicesType component.
  late ServicesTypeModel servicesTypeModel1;
  // Model for ServicesType component.
  late ServicesTypeModel servicesTypeModel2;
  // Model for ServicesType component.
  late ServicesTypeModel servicesTypeModel3;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for TimeSlot component.
  late TimeSlotModel timeSlotModel1;
  // Model for TimeSlot component.
  late TimeSlotModel timeSlotModel2;
  // Model for TimeSlot component.
  late TimeSlotModel timeSlotModel3;
  // Model for TimeSlot component.
  late TimeSlotModel timeSlotModel4;
  // Model for TimeSlot component.
  late TimeSlotModel timeSlotModel5;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    servicesTypeModel1 = createModel(context, () => ServicesTypeModel());
    servicesTypeModel2 = createModel(context, () => ServicesTypeModel());
    servicesTypeModel3 = createModel(context, () => ServicesTypeModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    timeSlotModel1 = createModel(context, () => TimeSlotModel());
    timeSlotModel2 = createModel(context, () => TimeSlotModel());
    timeSlotModel3 = createModel(context, () => TimeSlotModel());
    timeSlotModel4 = createModel(context, () => TimeSlotModel());
    timeSlotModel5 = createModel(context, () => TimeSlotModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    servicesTypeModel1.dispose();
    servicesTypeModel2.dispose();
    servicesTypeModel3.dispose();
    timeSlotModel1.dispose();
    timeSlotModel2.dispose();
    timeSlotModel3.dispose();
    timeSlotModel4.dispose();
    timeSlotModel5.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
