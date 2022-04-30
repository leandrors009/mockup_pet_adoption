import 'package:flutter_test/flutter_test.dart';
import 'package:mockup_pet_adoption/core/utils/calculate.dart';

void main() {
  test('should return elapsed time since birthdate - in years', (() {
    final ellapsedTime =
        Calculate.petAge(DateTime(2022, 04, 30), DateTime(2021, 03, 28));
    print(ellapsedTime);
    expect(ellapsedTime, '1,1 years old');
  }));

  test('should return elapsed time since birthdate - in months', (() {
    final ellapsedTime =
        Calculate.petAge(DateTime(2022, 04, 30), DateTime(2022, 03, 28));
    print(ellapsedTime);
    expect(ellapsedTime, '1 months old');
  }));

  test('should return elapsed time since birthdate - in days', (() {
    final ellapsedTime =
        Calculate.petAge(DateTime(2022, 04, 30), DateTime(2022, 04, 28));
    print(ellapsedTime);
    expect(ellapsedTime, '2 days old');
  }));
}
