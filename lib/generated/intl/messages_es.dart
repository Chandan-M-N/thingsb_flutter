// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  static String m0(contact) =>
      "Se ha enviado un código de seguridad a su dirección de correo electrónico en ${contact}.";

  static String m1(time) =>
      "Reenviar código en ${Intl.plural(time, one: '1 segundo', other: '${time} segundos')}";

  static String m2(contact) =>
      "Se ha enviado un código de seguridad a su teléfono en ${contact}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "actionData":
            MessageLookupByLibrary.simpleMessage("Datos de la acción"),
        "active": MessageLookupByLibrary.simpleMessage("Activo"),
        "address": MessageLookupByLibrary.simpleMessage("Dirección"),
        "address2": MessageLookupByLibrary.simpleMessage("Dirección 2"),
        "alarmAcknowledgeText": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de que desea reconocer la alarma?"),
        "alarmAcknowledgeTitle":
            MessageLookupByLibrary.simpleMessage("Reconocer Alarma"),
        "alarmClearText": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de que desea borrar la alarma?"),
        "alarmClearTitle":
            MessageLookupByLibrary.simpleMessage("Borrar Alarma"),
        "alarms": MessageLookupByLibrary.simpleMessage("Alarmas"),
        "allDevices":
            MessageLookupByLibrary.simpleMessage("Todos los dispositivos"),
        "appTitle": MessageLookupByLibrary.simpleMessage("ThingsBoard"),
        "assetName": MessageLookupByLibrary.simpleMessage("Nombre del activo"),
        "assets": MessageLookupByLibrary.simpleMessage("Activos"),
        "assignedToCustomer":
            MessageLookupByLibrary.simpleMessage("Asignado al cliente"),
        "auditLogDetails": MessageLookupByLibrary.simpleMessage(
            "Detalles del registro de auditoría"),
        "auditLogs":
            MessageLookupByLibrary.simpleMessage("Registros de Auditoría"),
        "backupCodeAuthDescription": MessageLookupByLibrary.simpleMessage(
            "Ingrese uno de sus códigos de respaldo."),
        "backupCodeAuthPlaceholder":
            MessageLookupByLibrary.simpleMessage("Código de respaldo"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Cambiar Contraseña"),
        "city": MessageLookupByLibrary.simpleMessage("Ciudad"),
        "continueText": MessageLookupByLibrary.simpleMessage("Continuar"),
        "country": MessageLookupByLibrary.simpleMessage("País"),
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("contraseñaActual"),
        "currentPasswordRequireText": MessageLookupByLibrary.simpleMessage(
            "La contraseña actual es obligatoria."),
        "currentPasswordStar":
            MessageLookupByLibrary.simpleMessage("Contraseña actual *"),
        "customer": MessageLookupByLibrary.simpleMessage("Cliente"),
        "customers": MessageLookupByLibrary.simpleMessage("Clientes"),
        "devices": MessageLookupByLibrary.simpleMessage("Dispositivos"),
        "email": MessageLookupByLibrary.simpleMessage("Correo Electrónico"),
        "emailAuthDescription": m0,
        "emailAuthPlaceholder": MessageLookupByLibrary.simpleMessage(
            "Código de correo electrónico"),
        "emailInvalidText": MessageLookupByLibrary.simpleMessage(
            "Formato de correo electrónico no válido."),
        "emailRequireText": MessageLookupByLibrary.simpleMessage(
            "El correo electrónico es obligatorio."),
        "emailStar":
            MessageLookupByLibrary.simpleMessage("Correo Electrónico *"),
        "entityType": MessageLookupByLibrary.simpleMessage("Tipo de entidad"),
        "failureDetails":
            MessageLookupByLibrary.simpleMessage("Detalles del fallo"),
        "firstName": MessageLookupByLibrary.simpleMessage("nombre"),
        "firstNameUpper": MessageLookupByLibrary.simpleMessage("Nombre"),
        "home": MessageLookupByLibrary.simpleMessage("Inicio"),
        "inactive": MessageLookupByLibrary.simpleMessage("Inactivo"),
        "label": MessageLookupByLibrary.simpleMessage("Etiqueta"),
        "language": MessageLookupByLibrary.simpleMessage("Idioma"),
        "lastName": MessageLookupByLibrary.simpleMessage("apellido"),
        "lastNameUpper": MessageLookupByLibrary.simpleMessage("Apellido"),
        "listIsEmptyText": MessageLookupByLibrary.simpleMessage(
            "La lista está actualmente vacía."),
        "login": MessageLookupByLibrary.simpleMessage("Iniciar Sesión"),
        "loginNotification":
            MessageLookupByLibrary.simpleMessage("Inicie sesión en su cuenta"),
        "logoDefaultValue":
            MessageLookupByLibrary.simpleMessage("Logo de ThingsBoard"),
        "logout": MessageLookupByLibrary.simpleMessage("Cerrar Sesión"),
        "mfaProviderBackupCode":
            MessageLookupByLibrary.simpleMessage("Código de respaldo"),
        "mfaProviderEmail":
            MessageLookupByLibrary.simpleMessage("Correo Electrónico"),
        "mfaProviderSms": MessageLookupByLibrary.simpleMessage("SMS"),
        "mfaProviderTopt":
            MessageLookupByLibrary.simpleMessage("Aplicación de autenticación"),
        "more": MessageLookupByLibrary.simpleMessage("Más"),
        "newPassword": MessageLookupByLibrary.simpleMessage("nuevaContraseña"),
        "newPassword2":
            MessageLookupByLibrary.simpleMessage("nuevaContraseña2"),
        "newPassword2RequireText": MessageLookupByLibrary.simpleMessage(
            "Se requiere la nueva contraseña de nuevo."),
        "newPassword2Star":
            MessageLookupByLibrary.simpleMessage("Nueva contraseña de nuevo *"),
        "newPasswordRequireText": MessageLookupByLibrary.simpleMessage(
            "La nueva contraseña es obligatoria."),
        "newPasswordStar":
            MessageLookupByLibrary.simpleMessage("Nueva contraseña *"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "notImplemented":
            MessageLookupByLibrary.simpleMessage("¡No implementado!"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notificaciones"),
        "or": MessageLookupByLibrary.simpleMessage("O"),
        "otherExistingKeys": MessageLookupByLibrary.simpleMessage("valores"),
        "password": MessageLookupByLibrary.simpleMessage("Contraseña"),
        "passwordErrorNotification": MessageLookupByLibrary.simpleMessage(
            "¡Las contraseñas ingresadas deben ser iguales!"),
        "passwordForgotText":
            MessageLookupByLibrary.simpleMessage("¿Olvidaste tu contraseña?"),
        "passwordRequireText": MessageLookupByLibrary.simpleMessage(
            "La contraseña es obligatoria."),
        "passwordReset":
            MessageLookupByLibrary.simpleMessage("Restablecer contraseña"),
        "passwordResetLinkSuccessfullySentNotification":
            MessageLookupByLibrary.simpleMessage(
                "¡El enlace para restablecer la contraseña fue enviado con éxito!"),
        "passwordResetText": MessageLookupByLibrary.simpleMessage(
            "Ingrese el correo electrónico asociado con su cuenta y le enviaremos un enlace para restablecer la contraseña"),
        "passwordSuccessNotification": MessageLookupByLibrary.simpleMessage(
            "Contraseña cambiada con éxito"),
        "phone": MessageLookupByLibrary.simpleMessage("Teléfono"),
        "postalCode": MessageLookupByLibrary.simpleMessage("Código Postal"),
        "profileSuccessNotification": MessageLookupByLibrary.simpleMessage(
            "Perfil actualizado con éxito"),
        "requestPasswordReset": MessageLookupByLibrary.simpleMessage(
            "Solicitar restablecimiento de contraseña"),
        "resendCode": MessageLookupByLibrary.simpleMessage("Reenviar código"),
        "resendCodeWait": m1,
        "selectWayToVerify": MessageLookupByLibrary.simpleMessage(
            "Seleccione una forma de verificar"),
        "smsAuthDescription": m2,
        "smsAuthPlaceholder":
            MessageLookupByLibrary.simpleMessage("Código SMS"),
        "stateOrProvince":
            MessageLookupByLibrary.simpleMessage("Estado / Provincia"),
        "systemAdministrator":
            MessageLookupByLibrary.simpleMessage("Administrador del Sistema"),
        "tenantAdministrator": MessageLookupByLibrary.simpleMessage(
            "Administrador del Arrendatario"),
        "title": MessageLookupByLibrary.simpleMessage("Título"),
        "toptAuthPlaceholder": MessageLookupByLibrary.simpleMessage("Código"),
        "totpAuthDescription": MessageLookupByLibrary.simpleMessage(
            "Ingrese el código de seguridad de su aplicación de autenticación."),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Intentar de Nuevo"),
        "tryAnotherWay":
            MessageLookupByLibrary.simpleMessage("Prueba de otra manera"),
        "type": MessageLookupByLibrary.simpleMessage("Tipo"),
        "username": MessageLookupByLibrary.simpleMessage("nombre de usuario"),
        "verificationCodeIncorrect": MessageLookupByLibrary.simpleMessage(
            "Código de verificación incorrecto"),
        "verificationCodeInvalid": MessageLookupByLibrary.simpleMessage(
            "Formato de código de verificación no válido"),
        "verificationCodeManyRequest": MessageLookupByLibrary.simpleMessage(
            "Demasiadas solicitudes de verificación de código"),
        "verifyYourIdentity":
            MessageLookupByLibrary.simpleMessage("Verifique su identidad"),
        "yes": MessageLookupByLibrary.simpleMessage("Sí")
      };
}
