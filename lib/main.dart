void main() {
  // error rules
  // -avoid_relative_lib_imports
  // -avoid_types_as_parameter_names
  // -no_duplicate_case_values
  // -unrelated_type_equality_checks
  // -unsafe_html x
  // -valid_regexps

  test('avoid_relative_lib_imports', () {
    var aClass = A();
    var aClass = B();
  });

  test('unrelated_type_equality_checks', () {
    void someFunction() {
      var x = '1';
      if (x == 1) print('someFunction'); //LINT
    }

    void someFunction11(ClassBase instance) {
      var other = DerivedClass2();

      if (other == instance) print('someFunction11'); //OK
      if (other == instance) print('someFunction11'); //OK
    }

    someFunction();
    someFunction11(DerivedClass1());
  });

  test('valid_regexps', () {
    // 정규표현식 역슬래시(\)는 확장문자
    // 역슬래시 다음에 일반 문자가 오면 특수문자로 취급하고
    // 역슬래시 다음에 특수문자가 오면 그 문자 자체를 의미

    // () 소괄호 안의 문자를 하나의 문자로 인식
    print(RegExp(r'(').hasMatch('foo()'));
    print(RegExp(r'\(').hasMatch('foo()'));
  });
}

void test(String s, Null Function() param1) {}

class ClassBase {}

abstract class Mixin {}

class DerivedClass2 extends ClassBase with Mixin {}

// class DerivedClass1 {}
class DerivedClass1 with ClassBase {}

enum CounTryCodeEnumSample { AD, AE, AF, AG, AI, AL, AM, AN, AD, AQ }
