// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:fixnum/fixnum.dart';
// ignore: always_use_package_imports
import 'time_provider.dart';

/// DateTimeTimeProvider retrieves timestamps using DateTime.
class DateTimeTimeProvider implements TimeProvider {
  @override
  Int64 get now => Int64(DateTime.now().microsecondsSinceEpoch) * TimeProvider.nanosecondsPerMicrosecond;
}
