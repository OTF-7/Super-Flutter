part of '../super_flutter.dart';

abstract class Failure {
  static String exceptionToMessage(Exceptions exception, BuildContext context) {
    switch (exception.runtimeType) {
      case InternalServerErrorException:
        return exception.message ??
            AppLocalizations.of(context)!.errorServerException;
      case ConflictException:
        return exception.message ??
            AppLocalizations.of(context)!.errorConflictException;
      case CacheException:
        return exception.message ??
            AppLocalizations.of(context)!.errorCacheException;
      case NoContentException:
        return exception.message ??
            AppLocalizations.of(context)!.errorEmptyException;
      case ConnectionException:
        return exception.message ??
            AppLocalizations.of(context)!.errorConnectionException;
      case NotFoundException:
        return exception.message ??
            AppLocalizations.of(context)!.errorNotFoundException;
      case NotAcceptableException:
        return exception.message ??
            AppLocalizations.of(context)!.errorInvalidException;
      case GoneException:
        return exception.message ??
            AppLocalizations.of(context)!.errorExpireException;

      case UserExistsException:
        return exception.message ??
            AppLocalizations.of(context)!.errorUserExistsException;
      case PasswordException:
        return exception.message ??
            AppLocalizations.of(context)!.errorPasswordException;

      case UnauthorizedException:
        return exception.message ??
            AppLocalizations.of(context)!.errorUnauthenticatedException;

      case ForbiddenException:
        return exception.message ??
            AppLocalizations.of(context)!.errorUnexpectedException;
      case BlockedException:
        return exception.message ??
            AppLocalizations.of(context)!.errorBlockedException;
      case EmptyException:
        return exception.message ??
            AppLocalizations.of(context)!.errorEmptyException;

      case CustomException:
        return exception.message ??
            AppLocalizations.of(context)!.errorUnexpectedException;
      default:
        return exception.message ??
            AppLocalizations.of(context)!.errorUnexpectedException;
    }
  }
}
