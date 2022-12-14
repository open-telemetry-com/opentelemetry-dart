// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:opentelemetry_api/opentelemetry_api.dart';

/// A registry for creating named [Tracer]s.
abstract class TracerProvider {
  /// Returns a Tracer, creating one if one with the given [name] and [version]
  /// is not already created.
  ///
  /// [name] should be the name of the tracer or instrumentation library.
  /// [version] should be the version of the tracer or instrumentation library.
  Tracer getTracer(String name, {String version});

  /// Flush all registered span processors.
  void forceFlush();

  /// Stop all registered span processors.
  void shutdown();
}
