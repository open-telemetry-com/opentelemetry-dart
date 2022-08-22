// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:opentelemetry_api/opentelemetry_api.dart';

class SpanLink {
  final SpanContext _context;
  final List<Attribute> _attributes;

  SpanLink(
    this._context, {
    List<Attribute> attributes = const [],
  }) : _attributes = attributes;

  List<Attribute> get attributes => _attributes;

  SpanContext get context => _context;
}
