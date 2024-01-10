import '/ff/ff_animations.dart';
import '/ff/ff_theme.dart';
import '/ff/ff_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'membership_loading_widget_model.dart';
export 'membership_loading_widget_model.dart';

class MembershipLoadingWidgetWidget extends StatefulWidget {
  const MembershipLoadingWidgetWidget({Key? key}) : super(key: key);

  @override
  _MembershipLoadingWidgetWidgetState createState() =>
      _MembershipLoadingWidgetWidgetState();
}

class _MembershipLoadingWidgetWidgetState
    extends State<MembershipLoadingWidgetWidget> with TickerProviderStateMixin {
  late MembershipLoadingWidgetModel _model;

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(150.0, 0.0),
          end: Offset(-150.0, 0.0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(-150.0, 0.0),
          end: Offset(150.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MembershipLoadingWidgetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.00, -1.00),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: FFTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.8,
                height: MediaQuery.sizeOf(context).width * 0.8,
                decoration: BoxDecoration(
                  color: Color(0xFFDFDFDF),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: FFTheme.of(context).primary,
                    width: 3.0,
                  ),
                ),
                child: ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 6.0,
                      sigmaY: 6.0,
                    ),
                    child: Transform.rotate(
                      angle: 3.5954,
                      child: Align(
                        alignment: AlignmentDirectional(0.00, -1.00),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/white-shimer.jpg',
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            fit: BoxFit.fitHeight,
                            alignment: Alignment(1.00, 0.00),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['imageOnPageLoadAnimation1']!),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.circular(0.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                  ),
                  child: ClipRect(
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: 6.0,
                        sigmaY: 6.0,
                      ),
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Align(
                          alignment: AlignmentDirectional(0.00, -1.00),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/white-shimer.jpg',
                              width: 15.0,
                              height: 40.0,
                              fit: BoxFit.cover,
                              alignment: Alignment(1.00, 0.00),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation2']!),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
