import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: 1000.0,
        height: 60.0,
        decoration: const BoxDecoration(
          color: Color(0xFFFFA07A),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(55.0),
            topRight: Radius.circular(55.0),
          ),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 1.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: FlutterFlowIconButton(
                  borderColor: const Color(0x006F61EF),
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: const Color(0x009489F5),
                  icon: Icon(
                    Icons.home_sharp,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 25.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('homepage');
                  },
                ),
              ),
              FlutterFlowIconButton(
                borderColor: const Color(0x006F61EF),
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                fillColor: const Color(0x009489F5),
                icon: Icon(
                  FFIcons.kgroup,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 25.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    'generateRecipe',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.scale,
                        alignment: Alignment.bottomCenter,
                        duration: Duration(milliseconds: 2),
                      ),
                    },
                  );
                },
              ),
              FlutterFlowIconButton(
                borderColor: const Color(0x006F61EF),
                borderRadius: 20.0,
                buttonSize: 40.0,
                fillColor: const Color(0x009489F5),
                icon: Icon(
                  Icons.add_circle,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 25.0,
                ),
                onPressed: () async {
                  context.pushNamed('addrecipe');
                },
              ),
              FlutterFlowIconButton(
                borderColor: const Color(0x006F61EF),
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                fillColor: const Color(0x009489F5),
                icon: Icon(
                  Icons.person_rounded,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 25.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    'profilepage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.scale,
                        alignment: Alignment.bottomCenter,
                        duration: Duration(milliseconds: 6),
                      ),
                    },
                  );
                },
              ),
            ].divide(const SizedBox(width: 40.0)),
          ),
        ),
      ),
    );
  }
}
