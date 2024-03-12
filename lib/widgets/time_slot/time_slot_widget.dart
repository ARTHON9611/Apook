import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'time_slot_model.dart';
export 'time_slot_model.dart';

class TimeSlotWidget extends StatefulWidget {
  const TimeSlotWidget({
    super.key,
    required this.slotTime,
  });

  final String? slotTime;

  @override
  State<TimeSlotWidget> createState() => _TimeSlotWidgetState();
}

class _TimeSlotWidgetState extends State<TimeSlotWidget> {
  late TimeSlotModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimeSlotModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      alignment: const AlignmentDirectional(0.0, 0.0),
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 20.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              setState(() {
                FFAppState().SelectedTimeColor =
                    FlutterFlowTheme.of(context).primaryText;
                FFAppState().SelectedTime = widget.slotTime!;
              });
            },
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FFAppState().SelectedTimeColor,
                borderRadius: BorderRadius.circular(15.0),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              widget.slotTime,
              '8:00',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
        ),
      ],
    );
  }
}
