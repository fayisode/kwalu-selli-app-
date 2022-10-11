import '../../../../../core/utils/values/guard.dart';
import '../../../../../core/utils/values/result.dart';
import '../../../../core/utils/values/value_object.dart';

class UserName extends ValueObject<UserName> {
  const UserName._(this.name) : super(name);

  static Result<UserName> create({String name = ''}) {
    final Result<String> result = Guard<String>().combine(
      results: <Result<String>>[
        Guard<String>().againstNullOrUndefined(
          value: name,
          valueName: 'Name',
        ),
        Guard<String>().inRange(
          value: name.length,
          min: 3,
          max: 30,
          valueName: 'Name',
        ),
      ],
    );
    return result.isRight
        ? Result<UserName>.ok(value: UserName._(result.getValue))
        : Result<UserName>.fail(error: result.error);
  }

  final String name;
}
