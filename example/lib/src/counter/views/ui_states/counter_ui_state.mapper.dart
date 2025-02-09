// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'counter_ui_state.dart';

class CounterUIStateMapper extends ClassMapperBase<CounterUIState> {
  CounterUIStateMapper._();

  static CounterUIStateMapper? _instance;
  static CounterUIStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CounterUIStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CounterUIState';

  static int _$count(CounterUIState v) => v.count;
  static const Field<CounterUIState, int> _f$count = Field('count', _$count);

  @override
  final MappableFields<CounterUIState> fields = const {
    #count: _f$count,
  };

  static CounterUIState _instantiate(DecodingData data) {
    return CounterUIState(count: data.dec(_f$count));
  }

  @override
  final Function instantiate = _instantiate;

  static CounterUIState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CounterUIState>(map);
  }

  static CounterUIState fromJson(String json) {
    return ensureInitialized().decodeJson<CounterUIState>(json);
  }
}

mixin CounterUIStateMappable {
  String toJson() {
    return CounterUIStateMapper.ensureInitialized()
        .encodeJson<CounterUIState>(this as CounterUIState);
  }

  Map<String, dynamic> toMap() {
    return CounterUIStateMapper.ensureInitialized()
        .encodeMap<CounterUIState>(this as CounterUIState);
  }

  CounterUIStateCopyWith<CounterUIState, CounterUIState, CounterUIState>
      get copyWith => _CounterUIStateCopyWithImpl(
          this as CounterUIState, $identity, $identity);
  @override
  String toString() {
    return CounterUIStateMapper.ensureInitialized()
        .stringifyValue(this as CounterUIState);
  }

  @override
  bool operator ==(Object other) {
    return CounterUIStateMapper.ensureInitialized()
        .equalsValue(this as CounterUIState, other);
  }

  @override
  int get hashCode {
    return CounterUIStateMapper.ensureInitialized()
        .hashValue(this as CounterUIState);
  }
}

extension CounterUIStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CounterUIState, $Out> {
  CounterUIStateCopyWith<$R, CounterUIState, $Out> get $asCounterUIState =>
      $base.as((v, t, t2) => _CounterUIStateCopyWithImpl(v, t, t2));
}

abstract class CounterUIStateCopyWith<$R, $In extends CounterUIState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? count});
  CounterUIStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CounterUIStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CounterUIState, $Out>
    implements CounterUIStateCopyWith<$R, CounterUIState, $Out> {
  _CounterUIStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CounterUIState> $mapper =
      CounterUIStateMapper.ensureInitialized();
  @override
  $R call({int? count}) =>
      $apply(FieldCopyWithData({if (count != null) #count: count}));
  @override
  CounterUIState $make(CopyWithData data) =>
      CounterUIState(count: data.get(#count, or: $value.count));

  @override
  CounterUIStateCopyWith<$R2, CounterUIState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CounterUIStateCopyWithImpl($value, $cast, t);
}
