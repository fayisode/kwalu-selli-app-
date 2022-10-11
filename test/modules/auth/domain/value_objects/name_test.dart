import 'package:flutter_test/flutter_test.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/name.dart';

void main() {
  test('when user input is valid, return a success result', () {
    final Result<UserName> result = UserName.create(name: 'test');
    expect(result.isRight, true);
  });
  test(
      "when user input doesn't meet the required length, return a failed result",
      () {
    final Result<UserName> result = UserName.create(name: 'te');
    expect(result.isLeft, true);

    final Result<UserName> result2 = UserName.create(
        name:
            'fjafjdkjhkajhkdjkdjkhdhjdjhkdjhkdjkhdsjhdfhfhddkjsjkdjkjkdjkdjkdjkdjdjdjkdjjkajksjdjjdjhkdsjdjhdjhkfdkhjahjdjdjkdfjfjff');
    expect(result2.isLeft, true);
  });
}
