import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/usable_service_card/usable_service_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          actions: const [],
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Select Your Service',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: MasonryGridView.builder(
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return [
                        () => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('ServicesPage');
                              },
                              child: wrapWithModel(
                                model: _model.usableServiceCardModel1,
                                updateCallback: () => setState(() {}),
                                child: const UsableServiceCardWidget(
                                  photo:
                                      'https://img.freepik.com/free-photo/client-doing-hair-cut-barber-shop-salon_1303-20719.jpg?t=st=1710273116~exp=1710276716~hmac=83f3ca281b1590b8e80b4adc8aa99d7c38baf4f8390ff8d8883fb9eb1c075d78&w=1060',
                                ),
                              ),
                            ),
                        () => wrapWithModel(
                              model: _model.usableServiceCardModel2,
                              updateCallback: () => setState(() {}),
                              child: const UsableServiceCardWidget(
                                height: 250,
                                photo:
                                    'https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?t=st=1710269396~exp=1710272996~hmac=396b84b414e895fcd54b559316b976abc21ee6d64de1f6a35e58fb243d1821f0&w=360',
                                serviceName: 'Doctor',
                              ),
                            ),
                        () => wrapWithModel(
                              model: _model.usableServiceCardModel3,
                              updateCallback: () => setState(() {}),
                              child: const UsableServiceCardWidget(
                                height: 300,
                                photo:
                                    'https://img.freepik.com/free-photo/luxury-aromatherapy-spa-treatment-with-scented-candle-flame-generated-by-ai_188544-10152.jpg?t=st=1710269697~exp=1710273297~hmac=884e006e9704a9c5e982296c226637e547584bae47a23b30bc618c510c5fb133&w=1380',
                                serviceName: 'Spa',
                              ),
                            ),
                        () => wrapWithModel(
                              model: _model.usableServiceCardModel4,
                              updateCallback: () => setState(() {}),
                              child: const UsableServiceCardWidget(
                                height: 250,
                                photo:
                                    'https://img.freepik.com/free-photo/young-healthy-man-athlete-doing-exercise-with-ropes-gym-single-male-model-practicing-hard-training-his-upper-body-concept-healthy-lifestyle-sport-fitness-bodybuilding-wellbeing_155003-27879.jpg?t=st=1710269886~exp=1710273486~hmac=70f3179e311aa203866076c9f889ad38507ce617ee148e44e313dc60b820c69a&w=1060',
                                serviceName: 'Gym',
                              ),
                            ),
                        () => wrapWithModel(
                              model: _model.usableServiceCardModel5,
                              updateCallback: () => setState(() {}),
                              child: const UsableServiceCardWidget(
                                height: 250,
                                photo:
                                    'https://img.freepik.com/premium-photo/worker-washing-red-car-with-sponge-car-wash_179755-10792.jpg?w=1060',
                                serviceName: 'Car Wash',
                              ),
                            ),
                        () => wrapWithModel(
                              model: _model.usableServiceCardModel6,
                              updateCallback: () => setState(() {}),
                              child: const UsableServiceCardWidget(
                                photo:
                                    'https://img.freepik.com/free-photo/medium-shot-man-helping-patient-physiotherapy_23-2149047562.jpg?t=st=1710269841~exp=1710273441~hmac=319c2ef5b50e905a00b24df24b7cf66c2535f9a3c31523c4c4ca5af77d40eafe&w=1060\n',
                                serviceName: 'Physio',
                              ),
                            ),
                      ][index]();
                    },
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
