// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

/// Class that allows a [api.TextMapPropagator] to set propagated fields into a carrier.
abstract class TextMapSetter<C> {
  /// Sets [value] for [key] on [carrier].
  void set(C carrier, String key, String value);
}
