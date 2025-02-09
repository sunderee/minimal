// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'morphing_widget_ui_state.dart';

class MorphingWidgetUIStateMapper
    extends ClassMapperBase<MorphingWidgetUIState> {
  MorphingWidgetUIStateMapper._();

  static MorphingWidgetUIStateMapper? _instance;
  static MorphingWidgetUIStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MorphingWidgetUIStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MorphingWidgetUIState';

  static Color _$backgroundColor(MorphingWidgetUIState v) => v.backgroundColor;
  static const Field<MorphingWidgetUIState, Color> _f$backgroundColor =
      Field('backgroundColor', _$backgroundColor, opt: true, def: Colors.blue);
  static BorderRadius _$borderRadius(MorphingWidgetUIState v) => v.borderRadius;
  static const Field<MorphingWidgetUIState, BorderRadius> _f$borderRadius =
      Field('borderRadius', _$borderRadius, opt: true, def: BorderRadius.zero);
  static int _$count(MorphingWidgetUIState v) => v.count;
  static const Field<MorphingWidgetUIState, int> _f$count =
      Field('count', _$count, opt: true, def: 0);
  static int _$milestone(MorphingWidgetUIState v) => v.milestone;
  static const Field<MorphingWidgetUIState, int> _f$milestone =
      Field('milestone', _$milestone, mode: FieldMode.member);

  @override
  final MappableFields<MorphingWidgetUIState> fields = const {
    #backgroundColor: _f$backgroundColor,
    #borderRadius: _f$borderRadius,
    #count: _f$count,
    #milestone: _f$milestone,
  };

  static MorphingWidgetUIState _instantiate(DecodingData data) {
    return MorphingWidgetUIState(
        backgroundColor: data.dec(_f$backgroundColor),
        borderRadius: data.dec(_f$borderRadius),
        count: data.dec(_f$count));
  }

  @override
  final Function instantiate = _instantiate;

  static MorphingWidgetUIState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MorphingWidgetUIState>(map);
  }

  static MorphingWidgetUIState fromJson(String json) {
    return ensureInitialized().decodeJson<MorphingWidgetUIState>(json);
  }
}

mixin MorphingWidgetUIStateMappable {
  String toJson() {
    return MorphingWidgetUIStateMapper.ensureInitialized()
        .encodeJson<MorphingWidgetUIState>(this as MorphingWidgetUIState);
  }

  Map<String, dynamic> toMap() {
    return MorphingWidgetUIStateMapper.ensureInitialized()
        .encodeMap<MorphingWidgetUIState>(this as MorphingWidgetUIState);
  }

  MorphingWidgetUIStateCopyWith<MorphingWidgetUIState, MorphingWidgetUIState,
          MorphingWidgetUIState>
      get copyWith => _MorphingWidgetUIStateCopyWithImpl(
          this as MorphingWidgetUIState, $identity, $identity);
  @override
  String toString() {
    return MorphingWidgetUIStateMapper.ensureInitialized()
        .stringifyValue(this as MorphingWidgetUIState);
  }

  @override
  bool operator ==(Object other) {
    return MorphingWidgetUIStateMapper.ensureInitialized()
        .equalsValue(this as MorphingWidgetUIState, other);
  }

  @override
  int get hashCode {
    return MorphingWidgetUIStateMapper.ensureInitialized()
        .hashValue(this as MorphingWidgetUIState);
  }
}

extension MorphingWidgetUIStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MorphingWidgetUIState, $Out> {
  MorphingWidgetUIStateCopyWith<$R, MorphingWidgetUIState, $Out>
      get $asMorphingWidgetUIState =>
          $base.as((v, t, t2) => _MorphingWidgetUIStateCopyWithImpl(v, t, t2));
}

abstract class MorphingWidgetUIStateCopyWith<
    $R,
    $In extends MorphingWidgetUIState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({Color? backgroundColor, BorderRadius? borderRadius, int? count});
  MorphingWidgetUIStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MorphingWidgetUIStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MorphingWidgetUIState, $Out>
    implements MorphingWidgetUIStateCopyWith<$R, MorphingWidgetUIState, $Out> {
  _MorphingWidgetUIStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MorphingWidgetUIState> $mapper =
      MorphingWidgetUIStateMapper.ensureInitialized();
  @override
  $R call({Color? backgroundColor, BorderRadius? borderRadius, int? count}) =>
      $apply(FieldCopyWithData({
        if (backgroundColor != null) #backgroundColor: backgroundColor,
        if (borderRadius != null) #borderRadius: borderRadius,
        if (count != null) #count: count
      }));
  @override
  MorphingWidgetUIState $make(CopyWithData data) => MorphingWidgetUIState(
      backgroundColor: data.get(#backgroundColor, or: $value.backgroundColor),
      borderRadius: data.get(#borderRadius, or: $value.borderRadius),
      count: data.get(#count, or: $value.count));

  @override
  MorphingWidgetUIStateCopyWith<$R2, MorphingWidgetUIState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MorphingWidgetUIStateCopyWithImpl($value, $cast, t);
}
