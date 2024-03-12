import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'usable_service_card_model.dart';
export 'usable_service_card_model.dart';

class UsableServiceCardWidget extends StatefulWidget {
  const UsableServiceCardWidget({
    super.key,
    int? width,
    int? height,
    required this.photo,
    String? serviceName,
  })  : width = width ?? 100,
        height = height ?? 300,
        serviceName = serviceName ?? 'Salon';

  final int width;
  final int height;
  final String? photo;
  final String serviceName;

  @override
  State<UsableServiceCardWidget> createState() =>
      _UsableServiceCardWidgetState();
}

class _UsableServiceCardWidgetState extends State<UsableServiceCardWidget> {
  late UsableServiceCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsableServiceCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width.toDouble(),
      height: widget.height.toDouble(),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).alternate,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: const AlignmentDirectional(0.0, 0.0),
          children: [
            Opacity(
              opacity: 0.7,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 191.0,
                  height: 299.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        valueOrDefault<String>(
                          widget.photo,
                          'https://img.freepik.com/free-photo/client-doing-hair-cut-barber-shop-salon_1303-20719.jpg?t=st=1710273116~exp=1710276716~hmac=83f3ca281b1590b8e80b4adc8aa99d7c38baf4f8390ff8d8883fb9eb1c075d78&w=1060',
                        ),
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.04, 0.11),
              child: Text(
                widget.serviceName,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Space Grotesk',
                      color: FlutterFlowTheme.of(context).info,
                      fontSize: 35.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
