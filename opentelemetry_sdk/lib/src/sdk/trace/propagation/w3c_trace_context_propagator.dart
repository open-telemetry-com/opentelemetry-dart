// Copyright 2022 Andreas Gorges (all changes I made)
// Copyright 2021-2022 Workiva.
// Licensed under the Apache License, Version 2.0. Please see https://github.com/Workiva/opentelemetry-dart/blob/master/LICENSE for more information

import 'package:opentelemetry_api/opentelemetry_api.dart' as api;
import 'package:opentelemetry_sdk/opentelemetry_sdk.dart' as sdk;

class W3CTraceContextPropagator<C> implements api.TextMapPropagator<C> {
  static const String _traceVersion = '00';
  static const String _traceParentHeaderKey = 'traceparent';
  static const String _traceStateHeaderKey = 'tracestate';
  static const String _traceVersionFieldKey = 'version';
  static const String _traceIdFieldKey = 'traceid';
  static const String _parentIdFieldKey = 'parentid';
  static const String _traceFlagsFieldKey = 'traceflags';

  // See https://www.w3.org/TR/trace-context/#traceparent-header-field-values
  // for trace parent header specification.
  static final RegExp traceParentHeaderRegEx = RegExp('^(?<$_traceVersionFieldKey>[0-9a-f]{2})-'
      '(?<$_traceIdFieldKey>[0-9a-f]{${api.TraceId.sizeBits}})-'
      '(?<$_parentIdFieldKey>[0-9a-f]{${api.SpanId.sizeBits}})-'
      '(?<$_traceFlagsFieldKey>[0-9a-f]{${2}})\$');

  @override
  api.Context extract(api.Context context, C carrier, api.TextMapGetter<C> getter) {
    final traceParentHeader = getter.get(carrier, _traceParentHeaderKey);
    if (traceParentHeader == null) {
      // Carrier did not contain a trace header.  Do nothing.
      return context;
    }
    if (!traceParentHeaderRegEx.hasMatch(traceParentHeader)) {
      // Encountered a malformed or unknown trace header.  Do nothing.
      return context;
    }

    final parentHeaderMatch = traceParentHeaderRegEx.firstMatch(traceParentHeader);

    if (parentHeaderMatch == null) {
      // FIXME: fix

    }
    // final traceId = api.TraceId.invalid();
    // final parentId = api.SpanId.invalid();
    // final traceFlags = api.TraceFlags.none;
    final parentHeaderFields = Map<String, String>.fromIterable(
      parentHeaderMatch!.groupNames, // FIXME: remove !
      key: (dynamic element) => element.toString(),
      value: (dynamic element) => parentHeaderMatch.namedGroup(element as String)!, // FIXME: remove !
    );

    final traceIdField = parentHeaderFields[_traceIdFieldKey];
    final traceId = traceIdField != null ? api.TraceId.fromString(traceIdField) : api.TraceId.invalid();

    final parentIdField = parentHeaderFields[_parentIdFieldKey];
    final parentId = parentIdField != null ? api.SpanId.fromString(parentIdField) : api.SpanId.invalid();

    final traceFlagsField = parentHeaderFields[_traceFlagsFieldKey];
    final traceFlags = traceFlagsField != null
        ? (int.tryParse(traceFlagsField, radix: 16) ?? api.TraceFlags.none)
        : api.TraceFlags.none;

    final traceStateHeader = getter.get(carrier, _traceStateHeaderKey);
    final traceState =
        (traceStateHeader != null) ? sdk.TraceState.fromString(traceStateHeader) : sdk.TraceState.empty();

    return context.withSpan(api.NonRecordingSpan(sdk.SpanContext.remote(traceId, parentId, traceFlags, traceState)));
  }

  @override
  void inject(api.Context context, C carrier, api.TextMapSetter<C> setter) {
    final spanContext = context.spanContext;

    // FIXME: spanContext?. and spanContext?.traceState.toString()?? ''
    setter
      ..set(
          carrier,
          _traceParentHeaderKey,
          '$_traceVersion-${spanContext?.traceId.toString()}-'
          '${spanContext?.spanId.toString()}-'
          '${spanContext?.traceFlags.toRadixString(16).padLeft(2, '0')}')
      ..set(carrier, _traceStateHeaderKey, spanContext?.traceState.toString() ?? '');
  }
}
