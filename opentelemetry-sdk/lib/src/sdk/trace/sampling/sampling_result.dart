// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:opentelemetry_api/opentelemetry_api.dart' as api;

enum Decision {
  drop,
  recordOnly,
  recordAndSample,
}

class SamplingResult {
  final Decision decision;
  final List<api.Attribute> spanAttributes;
  final api.TraceState traceState;

  SamplingResult(this.decision, this.spanAttributes, this.traceState);
}
