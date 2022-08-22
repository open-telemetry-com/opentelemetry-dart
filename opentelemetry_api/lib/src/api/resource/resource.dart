// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:opentelemetry_api/opentelemetry_api.dart';

class Resource {
  final Attributes _attributes = Attributes.empty();

  Resource(List<Attribute> attributes) {
    for (final attribute in attributes) {
      if (attribute.value is! String) {
        throw ArgumentError('Attributes value must be String.');
      }
    }
    _attributes.addAll(attributes);
  }

  Attributes get attributes => _attributes;
}
