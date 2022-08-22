// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:opentelemetry_api/opentelemetry_api.dart';
import 'package:test/test.dart';

void main() {
  test('Resource attributes value is not String', () {
    expect(() => Resource([Attribute.fromBoolean('foo', true)]),
        throwsA(isA<ArgumentError>().having((error) => error.message, 'message', 'Attributes value must be String.')));
  });
}
