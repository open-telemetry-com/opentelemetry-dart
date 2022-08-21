// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:mockito/mockito.dart';
import 'package:opentelemetry_api/opentelemetry_api.dart';

class MockContext extends Mock implements Context {}

class MockSpan extends Mock implements Span {}

class MockSpanExporter extends Mock implements SpanExporter {}

class MockSpanProcessor extends Mock implements SpanProcessor {}
