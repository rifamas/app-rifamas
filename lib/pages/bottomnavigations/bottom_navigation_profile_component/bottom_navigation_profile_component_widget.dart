import '/ff/ff_theme.dart';
import '/ff/ff_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_navigation_profile_component_model.dart';
export 'bottom_navigation_profile_component_model.dart';

class BottomNavigationProfileComponentWidget extends StatefulWidget {
  const BottomNavigationProfileComponentWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationProfileComponentWidgetState createState() =>
      _BottomNavigationProfileComponentWidgetState();
}

class _BottomNavigationProfileComponentWidgetState
    extends State<BottomNavigationProfileComponentWidget> {
  late BottomNavigationProfileComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => BottomNavigationProfileComponentModel());

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
      alignment: AlignmentDirectional(0.00, 1.00),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 110.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/Rifamas_bottom5.png',
            ).image,
          ),
          borderRadius: BorderRadius.circular(0.0),
          shape: BoxShape.rectangle,
        ),
        alignment: AlignmentDirectional(0.00, 1.00),
        child: Align(
          alignment: AlignmentDirectional(0.00, -5.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (Navigator.of(context).canPop()) {
                      context.pop();
                    }
                    context.pushNamed('HomePage');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/icono-inicio.png',
                          width: 30.0,
                          height: 30.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Inicio',
                        style: FFTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FFTheme.of(context).accent4,
                            ),
                      ),
                    ].divide(SizedBox(height: 5.0)),
                  ),
                ),
                if (FFAppState().loggedIn == true)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed('myProductListAllPage');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/icono-rifas.png',
                            width: 30.0,
                            height: 30.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Mis rifas',
                          style:
                              FFTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FFTheme.of(context).accent4,
                                  ),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                  ),
                if (FFAppState().loggedIn == true)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed('membersHomePage');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/icono-subir.png',
                            width: 30.0,
                            height: 30.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Publicar',
                          style:
                              FFTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FFTheme.of(context).accent4,
                                  ),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                  ),
                if (FFAppState().loggedIn == true)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('chatListPage');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/icono-mensajes.png',
                            width: 30.0,
                            height: 30.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Mensajes',
                          style:
                              FFTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FFTheme.of(context).accent4,
                                  ),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                  ),
                if (FFAppState().loggedIn == false)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed('loginPage');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.login,
                          color: FFTheme.of(context).accent4,
                          size: 30.0,
                        ),
                        Text(
                          'Entrar',
                          style:
                              FFTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FFTheme.of(context).accent4,
                                  ),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                  ),
                if (FFAppState().loggedIn == true)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed('accountPage');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/icono-perfil.png',
                            width: 30.0,
                            height: 30.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Perfil',
                          style:
                              FFTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FFTheme.of(context).accent4,
                                  ),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
