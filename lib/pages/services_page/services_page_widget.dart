import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/services_type_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/time_slot/time_slot_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services_page_model.dart';
export 'services_page_model.dart';

class ServicesPageWidget extends StatefulWidget {
  const ServicesPageWidget({super.key});

  @override
  State<ServicesPageWidget> createState() => _ServicesPageWidgetState();
}

class _ServicesPageWidgetState extends State<ServicesPageWidget> {
  late ServicesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicesPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
            child: Text(
              'The Fade Fctory',
              style: FlutterFlowTheme.of(context).headlineMedium,
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(
                    maxWidth: 570.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  'https://img.freepik.com/free-photo/young-man-barbershop-trimming-hair_1303-26254.jpg?t=st=1710270412~exp=1710274012~hmac=c6c0cfbede70a9f7c541624ebd6a760d83b773aea8ea29bf459d354fb7433cf3&w=1060',
                                  width: double.infinity,
                                  height: 230.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'The Fade Fctory',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Joga Expo Center ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Text(
                                        '(2 KM)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.star_rate,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      Text(
                                        '3.5',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Choose Service',
                            style: FlutterFlowTheme.of(context).headlineSmall,
                          ),
                        ),
                        ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 17.0, 0.0, 25.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  wrapWithModel(
                                    model: _model.servicesTypeModel1,
                                    updateCallback: () => setState(() {}),
                                    child: const ServicesTypeWidget(
                                      photo:
                                          'https://img.freepik.com/free-photo/close-up-view-hairstilyst-giving-haircut_23-2148506296.jpg?t=st=1710274699~exp=1710278299~hmac=68d89c1b229137adc05edeb13c6a77d52180ec5cd1f30b3d460f61fd4d913f1b&w=360',
                                      serviceType: 'Basic Haircut',
                                      cost: '\$20',
                                    ),
                                  ),
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.servicesTypeModel2,
                                      updateCallback: () => setState(() {}),
                                      child: const ServicesTypeWidget(
                                        photo:
                                            'https://img.freepik.com/free-photo/smiley-kid-getting-haircut-front-view_23-2149870363.jpg?t=st=1710274754~exp=1710278354~hmac=0ddc41385da40a3d0c2f4628c549071152434b94cf1a16d7b4ca8ec6386c8c54&w=1060',
                                        serviceType: 'kids Haircut',
                                        cost: '\$15',
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.servicesTypeModel3,
                                      updateCallback: () => setState(() {}),
                                      child: const ServicesTypeWidget(
                                        photo:
                                            'https://img.freepik.com/free-photo/side-view-woman-hair-salon_23-2150668447.jpg?t=st=1710274809~exp=1710278409~hmac=56612f4389ebddaa020171bf96fc366d69390e730e8a09e70523a5cf1bbbc777&w=1060',
                                        serviceType: 'Hair Coloring',
                                        cost: '\$30',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).primary,
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          weekFormat: true,
                          weekStartsMonday: true,
                          rowHeight: 64.0,
                          onChange: (DateTimeRange? newSelectedDate) {
                            setState(() =>
                                _model.calendarSelectedDay = newSelectedDate);
                          },
                          titleStyle:
                              FlutterFlowTheme.of(context).headlineSmall,
                          dayOfWeekStyle:
                              FlutterFlowTheme.of(context).labelLarge,
                          dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                          selectedDateStyle:
                              FlutterFlowTheme.of(context).titleSmall,
                          inactiveDateStyle:
                              FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  children: [
                    wrapWithModel(
                      model: _model.timeSlotModel1,
                      updateCallback: () => setState(() {}),
                      child: const TimeSlotWidget(
                        slotTime: '8:00',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.timeSlotModel2,
                      updateCallback: () => setState(() {}),
                      child: const TimeSlotWidget(
                        slotTime: '8:30',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.timeSlotModel3,
                      updateCallback: () => setState(() {}),
                      child: const TimeSlotWidget(
                        slotTime: '10:00',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.timeSlotModel4,
                      updateCallback: () => setState(() {}),
                      child: const TimeSlotWidget(
                        slotTime: '13:00',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.timeSlotModel5,
                      updateCallback: () => setState(() {}),
                      child: const TimeSlotWidget(
                        slotTime: '14:00',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 12.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().SelectedAppointment = <String, dynamic>{
                      'Date': _model.calendarSelectedDay?.end,
                      'timeSlot': FFAppState().SelectedTime,
                      'serviceType': FFAppState().serviceSelected,
                    };

                    await currentUserReference!.update({
                      ...mapToFirestore(
                        {
                          'Booked': FieldValue.arrayUnion(
                              [FFAppState().SelectedAppointment.toString()]),
                        },
                      ),
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Your Appointment has been booked',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: const Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).accent1,
                        width: 2.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Book Now',
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
