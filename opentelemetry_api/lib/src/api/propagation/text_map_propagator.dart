// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:opentelemetry_api/opentelemetry_api.dart';

/// A class responsible for performing the injection and extraction of a
/// cross-cutting concern value as string key/values pairs into carriers that
/// travel across process boundaries.
///
/// See https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/context/api-propagators.md#textmap-propagator
/// for full specification.
abstract class TextMapPropagator<C> {
  void inject(Context context, C carrier, TextMapSetter<C> setter);

  Context extract(Context context, C carrier, TextMapGetter<C> getter);
}
