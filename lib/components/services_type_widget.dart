import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'services_type_model.dart';
export 'services_type_model.dart';

class ServicesTypeWidget extends StatefulWidget {
  const ServicesTypeWidget({
    super.key,
    required this.photo,
    required this.serviceType,
    required this.cost,
  });

  final String? photo;
  final String? serviceType;
  final String? cost;

  @override
  State<ServicesTypeWidget> createState() => _ServicesTypeWidgetState();
}

class _ServicesTypeWidgetState extends State<ServicesTypeWidget> {
  late ServicesTypeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicesTypeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        setState(() {
          FFAppState().serviceSelected = widget.serviceType!;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              widget.serviceType!,
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              widget.photo!,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.serviceType,
              'Basic',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
          Text(
            valueOrDefault<String>(
              widget.cost,
              '\$20',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
        ],
      ),
    );
  }
}
