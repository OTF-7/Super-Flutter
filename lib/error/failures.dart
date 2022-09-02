part of '../super_flutter.dart';

abstract class Failure {
  static String exceptionToMessage(Exceptions exception) {
    switch (exception.runtimeType) {
      case ServerException:
        return exception.message ??
            SuperTranslations.of(
                    SuperFlutter.navigatorKey.currentState!.context)!
                .errorServerException;
      case ConflictException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorConflictException;
      case CacheException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorCacheException;
      case NoContentException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorEmptyException;
      case ConnectionException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorConnectionException;
      case NotFoundException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorNotFoundException;
      case InvalidException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorInvalidException;
      case ExpireException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorExpireException;

      case UserExistsException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorUserExistsException;
      case PasswordException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorPasswordException;

      case UnauthenticatedException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorUnauthenticatedException;

      case ForbiddenException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorUnexpectedException;
      case BlockedException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorBlockedException;
      case EmptyException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorEmptyException;

      case CustomException:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorUnexpectedException;
      default:
        return exception.message ??
            SuperTranslations.of(
                SuperFlutter.navigatorKey.currentState!.context)!
                .errorUnexpectedException;
    }
  }
}
