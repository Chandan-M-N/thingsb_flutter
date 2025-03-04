import 'dart:ui';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:thingsboard_app/constants/assets_path.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/generated/l10n.dart';
import 'package:thingsboard_app/widgets/tb_progress_indicator.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

import 'login_page_background.dart';

class LoginPage extends TbPageWidget {
  LoginPage(TbContext tbContext) : super(tbContext);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends TbPageState<LoginPage> {
  final ButtonStyle _oauth2ButtonWithTextStyle = OutlinedButton.styleFrom(
      padding: EdgeInsets.all(16),
      alignment: Alignment.centerLeft,
      foregroundColor: Colors.black87);

  final ButtonStyle _oauth2IconButtonStyle = OutlinedButton.styleFrom(
      padding: EdgeInsets.all(16), alignment: Alignment.center);

  final _isLoginNotifier = ValueNotifier<bool>(false);
  final _showPasswordNotifier = ValueNotifier<bool>(false);

  final _loginFormKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
    if (tbClient.isPreVerificationToken()) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        navigateTo('/login/mfa');
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          LoginPageBackground(),
          Positioned.fill(child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(24, 71, 24, 24),
                  child: ConstrainedBox(
                      constraints: BoxConstraints(
                          minHeight: constraints.maxHeight - (71 + 24)),
                      child: IntrinsicHeight(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(children: [
                                SvgPicture.asset(
                                    ThingsboardImage.thingsBoardWithTitle,
                                    height: 25,
                                    colorFilter: ColorFilter.mode(
                                        Theme.of(context).primaryColor,
                                        BlendMode.srcIn),
                                    semanticsLabel:
                                        '${S.of(context).logoDefaultValue}')
                              ]),
                              SizedBox(height: 32),
                              Row(children: [
                                Text('${S.of(context).loginNotification}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28,
                                        height: 36 / 28))
                              ]),
                              SizedBox(height: 48),
                              if (tbContext.hasOAuthClients)
                                _buildOAuth2Buttons(
                                  tbContext.oauth2ClientInfos!,
                                ),
                              Visibility(
                                visible: !tbContext.hasOAuthClients,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      child: const Center(
                                        child: Text('LOGIN WITH'),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        OutlinedButton(
                                          style: _oauth2IconButtonStyle,
                                          onPressed: () async {
                                            try {
                                              final barcode =
                                                  await tbContext.navigateTo(
                                                '/qrCodeScan',
                                                transition:
                                                    TransitionType.nativeModal,
                                              );

                                              if (barcode != null &&
                                                  barcode.code != null) {
                                                tbContext.navigateByAppLink(
                                                  barcode.code,
                                                );
                                              } else {}
                                            } catch (e) {
                                              log.error(
                                                'Login with qr code error',
                                                e,
                                              );
                                            }
                                          },
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                ThingsboardImage.oauth2Logos[
                                                    'qr-code-logo']!,
                                                height: 24,
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                'Scan QR code',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 16),
                                child: Row(
                                  children: [
                                    Flexible(child: Divider()),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Text('${S.of(context).or}'),
                                    ),
                                    Flexible(child: Divider())
                                  ],
                                ),
                              ),
                              FormBuilder(
                                  key: _loginFormKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      FormBuilderTextField(
                                        name: 'username',
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator:
                                            FormBuilderValidators.compose([
                                          FormBuilderValidators.required(
                                              errorText:
                                                  '${S.of(context).emailRequireText}'),
                                          FormBuilderValidators.email(
                                              errorText:
                                                  '${S.of(context).emailInvalidText}')
                                        ]),
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText:
                                                '${S.of(context).email}'),
                                      ),
                                      SizedBox(height: 28),
                                      ValueListenableBuilder(
                                          valueListenable:
                                              _showPasswordNotifier,
                                          builder: (BuildContext context,
                                              bool showPassword, child) {
                                            return FormBuilderTextField(
                                              name: 'password',
                                              obscureText: !showPassword,
                                              validator: FormBuilderValidators
                                                  .compose([
                                                FormBuilderValidators.required(
                                                    errorText:
                                                        '${S.of(context).passwordRequireText}')
                                              ]),
                                              decoration: InputDecoration(
                                                  suffixIcon: IconButton(
                                                    icon: Icon(showPassword
                                                        ? Icons.visibility
                                                        : Icons.visibility_off),
                                                    onPressed: () {
                                                      _showPasswordNotifier
                                                              .value =
                                                          !_showPasswordNotifier
                                                              .value;
                                                    },
                                                  ),
                                                  border: OutlineInputBorder(),
                                                  labelText:
                                                      '${S.of(context).password}'),
                                            );
                                          })
                                    ],
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      _forgotPassword();
                                    },
                                    child: Text(
                                      '${S.of(context).passwordForgotText}',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          letterSpacing: 1,
                                          fontSize: 12,
                                          height: 16 / 12),
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              ElevatedButton(
                                child: Text('${S.of(context).login}'),
                                style: ElevatedButton.styleFrom(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16)),
                                onPressed: () {
                                  _login();
                                },
                              ),
                              SizedBox(height: 48)
                            ]),
                      )));
            },
          )),
          ValueListenableBuilder<bool>(
              valueListenable: _isLoginNotifier,
              builder: (BuildContext context, bool loading, child) {
                if (loading) {
                  var data = MediaQuery.of(context);
                  var bottomPadding = data.padding.top;
                  bottomPadding += kToolbarHeight;
                  return SizedBox.expand(
                      child: ClipRect(
                          child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                              child: Container(
                                decoration: new BoxDecoration(
                                    color:
                                        Colors.grey.shade200.withOpacity(0.2)),
                                child: Container(
                                  padding:
                                      EdgeInsets.only(bottom: bottomPadding),
                                  alignment: Alignment.center,
                                  child: TbProgressIndicator(size: 50.0),
                                ),
                              ))));
                } else {
                  return SizedBox.shrink();
                }
              })
        ]));
  }

  Widget _buildOAuth2Buttons(List<OAuth2ClientInfo> clients) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: const Center(
            child: Text('LOGIN WITH'),
          ),
        ),
        Row(
          children: [
            ...clients
                .asMap()
                .map(
                  (index, client) => MapEntry(
                    index,
                    _buildOAuth2Button(
                      client,
                      clients.length == 2 ? client.name : null,
                      true,
                      index == clients.length - 1,
                    ),
                  ),
                )
                .values
                .toList(),
            const SizedBox(width: 8),
            Expanded(
              child: OutlinedButton(
                style: _oauth2IconButtonStyle,
                onPressed: () async {
                  try {
                    final barcode = await tbContext.navigateTo(
                      '/qrCodeScan',
                      transition: TransitionType.nativeModal,
                    );

                    if (barcode != null && barcode.code != null) {
                      tbContext.navigateByAppLink(
                        barcode.code,
                      );
                    } else {}
                  } catch (e) {
                    log.error(
                      'Login with qr code error',
                      e,
                    );
                  }
                },
                child: SvgPicture.asset(
                  ThingsboardImage.oauth2Logos['qr-code']!,
                  height: 24,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildOAuth2Button(
      OAuth2ClientInfo client, String? text, bool expand, bool isLast) {
    Widget? icon;
    if (client.icon != null) {
      if (ThingsboardImage.oauth2Logos.containsKey(client.icon)) {
        icon = SvgPicture.asset(ThingsboardImage.oauth2Logos[client.icon]!,
            height: 24);
      } else {
        String strIcon = client.icon!;
        if (strIcon.startsWith('mdi:')) {
          strIcon = strIcon.substring(4);
        }
        var iconData = MdiIcons.fromString(strIcon);
        if (iconData != null) {
          icon =
              Icon(iconData, size: 24, color: Theme.of(context).primaryColor);
        }
      }
    }
    if (icon == null) {
      icon = Icon(Icons.login, size: 24, color: Theme.of(context).primaryColor);
    }
    Widget button;
    bool iconOnly = text == null;
    if (iconOnly) {
      button = OutlinedButton(
          style: _oauth2IconButtonStyle,
          onPressed: () => _oauth2ButtonPressed(client),
          child: icon);
    } else {
      button = OutlinedButton(
          style: _oauth2ButtonWithTextStyle,
          onPressed: () => _oauth2ButtonPressed(client),
          child: Stack(children: [
            Align(alignment: Alignment.centerLeft, child: icon),
            Container(
              height: 24,
              child: Align(
                  alignment: Alignment.center,
                  child: Text(text, textAlign: TextAlign.center)),
            )
          ]));
    }
    if (expand) {
      return Expanded(
          child: Padding(
        padding: EdgeInsets.only(right: isLast ? 0 : 8),
        child: button,
      ));
    } else {
      return Padding(
        padding: EdgeInsets.only(bottom: isLast ? 0 : 8),
        child: button,
      );
    }
  }

  void _oauth2ButtonPressed(OAuth2ClientInfo client) async {
    _isLoginNotifier.value = true;
    try {
      final result = await tbContext.oauth2Client.authenticate(client.url);
      if (result.success) {
        await tbClient.setUserFromJwtToken(
            result.accessToken, result.refreshToken, true);
      } else {
        _isLoginNotifier.value = false;
        showErrorNotification(result.error!);
      }
    } catch (e) {
      log.error('Auth Error:', e);
      _isLoginNotifier.value = false;
    }
  }

  void _login() async {
    FocusScope.of(context).unfocus();
    if (_loginFormKey.currentState?.saveAndValidate() ?? false) {
      var formValue = _loginFormKey.currentState!.value;
      String username = formValue['username'];
      String password = formValue['password'];
      _isLoginNotifier.value = true;
      try {
        await tbClient.login(LoginRequest(username, password));
      } catch (e) {
        _isLoginNotifier.value = false;
        if (!(e is ThingsboardError) ||
            e.errorCode == ThingsBoardErrorCode.general) {
          await tbContext.onFatalError(e);
        }
      }
    }
  }

  void _forgotPassword() async {
    navigateTo('/login/resetPasswordRequest');
  }
}
