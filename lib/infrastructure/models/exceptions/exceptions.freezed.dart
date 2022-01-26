// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteFailureTearOff {
  const _$NoteFailureTearOff();

  FetchNoteFailure fetchFailure({String description = 'Error fetching Notes'}) {
    return FetchNoteFailure(
      description: description,
    );
  }

  AddNoteFailure addFailure({String description = 'Error adding Note'}) {
    return AddNoteFailure(
      description: description,
    );
  }

  RemoveNoteFailure removeFailure(
      {String description = 'Error removing Note'}) {
    return RemoveNoteFailure(
      description: description,
    );
  }

  EditNoteFailure editFailure({String description = 'Error editing Note'}) {
    return EditNoteFailure(
      description: description,
    );
  }
}

/// @nodoc
const $NoteFailure = _$NoteFailureTearOff();

/// @nodoc
mixin _$NoteFailure {
  String get description => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) fetchFailure,
    required TResult Function(String description) addFailure,
    required TResult Function(String description) removeFailure,
    required TResult Function(String description) editFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? fetchFailure,
    TResult Function(String description)? addFailure,
    TResult Function(String description)? removeFailure,
    TResult Function(String description)? editFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNoteFailure value) fetchFailure,
    required TResult Function(AddNoteFailure value) addFailure,
    required TResult Function(RemoveNoteFailure value) removeFailure,
    required TResult Function(EditNoteFailure value) editFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNoteFailure value)? fetchFailure,
    TResult Function(AddNoteFailure value)? addFailure,
    TResult Function(RemoveNoteFailure value)? removeFailure,
    TResult Function(EditNoteFailure value)? editFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFailureCopyWith<NoteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFailureCopyWith<$Res> {
  factory $NoteFailureCopyWith(
          NoteFailure value, $Res Function(NoteFailure) then) =
      _$NoteFailureCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$NoteFailureCopyWithImpl<$Res> implements $NoteFailureCopyWith<$Res> {
  _$NoteFailureCopyWithImpl(this._value, this._then);

  final NoteFailure _value;
  // ignore: unused_field
  final $Res Function(NoteFailure) _then;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $FetchNoteFailureCopyWith<$Res>
    implements $NoteFailureCopyWith<$Res> {
  factory $FetchNoteFailureCopyWith(
          FetchNoteFailure value, $Res Function(FetchNoteFailure) then) =
      _$FetchNoteFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$FetchNoteFailureCopyWithImpl<$Res>
    extends _$NoteFailureCopyWithImpl<$Res>
    implements $FetchNoteFailureCopyWith<$Res> {
  _$FetchNoteFailureCopyWithImpl(
      FetchNoteFailure _value, $Res Function(FetchNoteFailure) _then)
      : super(_value, (v) => _then(v as FetchNoteFailure));

  @override
  FetchNoteFailure get _value => super._value as FetchNoteFailure;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(FetchNoteFailure(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchNoteFailure implements FetchNoteFailure {
  const _$FetchNoteFailure({this.description = 'Error fetching Notes'});

  @JsonKey(defaultValue: 'Error fetching Notes')
  @override
  final String description;

  @override
  String toString() {
    return 'NoteFailure.fetchFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchNoteFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $FetchNoteFailureCopyWith<FetchNoteFailure> get copyWith =>
      _$FetchNoteFailureCopyWithImpl<FetchNoteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) fetchFailure,
    required TResult Function(String description) addFailure,
    required TResult Function(String description) removeFailure,
    required TResult Function(String description) editFailure,
  }) {
    return fetchFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? fetchFailure,
    TResult Function(String description)? addFailure,
    TResult Function(String description)? removeFailure,
    TResult Function(String description)? editFailure,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNoteFailure value) fetchFailure,
    required TResult Function(AddNoteFailure value) addFailure,
    required TResult Function(RemoveNoteFailure value) removeFailure,
    required TResult Function(EditNoteFailure value) editFailure,
  }) {
    return fetchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNoteFailure value)? fetchFailure,
    TResult Function(AddNoteFailure value)? addFailure,
    TResult Function(RemoveNoteFailure value)? removeFailure,
    TResult Function(EditNoteFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(this);
    }
    return orElse();
  }
}

abstract class FetchNoteFailure implements NoteFailure {
  const factory FetchNoteFailure({String description}) = _$FetchNoteFailure;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FetchNoteFailureCopyWith<FetchNoteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteFailureCopyWith<$Res>
    implements $NoteFailureCopyWith<$Res> {
  factory $AddNoteFailureCopyWith(
          AddNoteFailure value, $Res Function(AddNoteFailure) then) =
      _$AddNoteFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$AddNoteFailureCopyWithImpl<$Res> extends _$NoteFailureCopyWithImpl<$Res>
    implements $AddNoteFailureCopyWith<$Res> {
  _$AddNoteFailureCopyWithImpl(
      AddNoteFailure _value, $Res Function(AddNoteFailure) _then)
      : super(_value, (v) => _then(v as AddNoteFailure));

  @override
  AddNoteFailure get _value => super._value as AddNoteFailure;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(AddNoteFailure(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNoteFailure implements AddNoteFailure {
  const _$AddNoteFailure({this.description = 'Error adding Note'});

  @JsonKey(defaultValue: 'Error adding Note')
  @override
  final String description;

  @override
  String toString() {
    return 'NoteFailure.addFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddNoteFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $AddNoteFailureCopyWith<AddNoteFailure> get copyWith =>
      _$AddNoteFailureCopyWithImpl<AddNoteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) fetchFailure,
    required TResult Function(String description) addFailure,
    required TResult Function(String description) removeFailure,
    required TResult Function(String description) editFailure,
  }) {
    return addFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? fetchFailure,
    TResult Function(String description)? addFailure,
    TResult Function(String description)? removeFailure,
    TResult Function(String description)? editFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNoteFailure value) fetchFailure,
    required TResult Function(AddNoteFailure value) addFailure,
    required TResult Function(RemoveNoteFailure value) removeFailure,
    required TResult Function(EditNoteFailure value) editFailure,
  }) {
    return addFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNoteFailure value)? fetchFailure,
    TResult Function(AddNoteFailure value)? addFailure,
    TResult Function(RemoveNoteFailure value)? removeFailure,
    TResult Function(EditNoteFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(this);
    }
    return orElse();
  }
}

abstract class AddNoteFailure implements NoteFailure {
  const factory AddNoteFailure({String description}) = _$AddNoteFailure;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddNoteFailureCopyWith<AddNoteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveNoteFailureCopyWith<$Res>
    implements $NoteFailureCopyWith<$Res> {
  factory $RemoveNoteFailureCopyWith(
          RemoveNoteFailure value, $Res Function(RemoveNoteFailure) then) =
      _$RemoveNoteFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$RemoveNoteFailureCopyWithImpl<$Res>
    extends _$NoteFailureCopyWithImpl<$Res>
    implements $RemoveNoteFailureCopyWith<$Res> {
  _$RemoveNoteFailureCopyWithImpl(
      RemoveNoteFailure _value, $Res Function(RemoveNoteFailure) _then)
      : super(_value, (v) => _then(v as RemoveNoteFailure));

  @override
  RemoveNoteFailure get _value => super._value as RemoveNoteFailure;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(RemoveNoteFailure(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveNoteFailure implements RemoveNoteFailure {
  const _$RemoveNoteFailure({this.description = 'Error removing Note'});

  @JsonKey(defaultValue: 'Error removing Note')
  @override
  final String description;

  @override
  String toString() {
    return 'NoteFailure.removeFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveNoteFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $RemoveNoteFailureCopyWith<RemoveNoteFailure> get copyWith =>
      _$RemoveNoteFailureCopyWithImpl<RemoveNoteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) fetchFailure,
    required TResult Function(String description) addFailure,
    required TResult Function(String description) removeFailure,
    required TResult Function(String description) editFailure,
  }) {
    return removeFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? fetchFailure,
    TResult Function(String description)? addFailure,
    TResult Function(String description)? removeFailure,
    TResult Function(String description)? editFailure,
    required TResult orElse(),
  }) {
    if (removeFailure != null) {
      return removeFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNoteFailure value) fetchFailure,
    required TResult Function(AddNoteFailure value) addFailure,
    required TResult Function(RemoveNoteFailure value) removeFailure,
    required TResult Function(EditNoteFailure value) editFailure,
  }) {
    return removeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNoteFailure value)? fetchFailure,
    TResult Function(AddNoteFailure value)? addFailure,
    TResult Function(RemoveNoteFailure value)? removeFailure,
    TResult Function(EditNoteFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (removeFailure != null) {
      return removeFailure(this);
    }
    return orElse();
  }
}

abstract class RemoveNoteFailure implements NoteFailure {
  const factory RemoveNoteFailure({String description}) = _$RemoveNoteFailure;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RemoveNoteFailureCopyWith<RemoveNoteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditNoteFailureCopyWith<$Res>
    implements $NoteFailureCopyWith<$Res> {
  factory $EditNoteFailureCopyWith(
          EditNoteFailure value, $Res Function(EditNoteFailure) then) =
      _$EditNoteFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$EditNoteFailureCopyWithImpl<$Res>
    extends _$NoteFailureCopyWithImpl<$Res>
    implements $EditNoteFailureCopyWith<$Res> {
  _$EditNoteFailureCopyWithImpl(
      EditNoteFailure _value, $Res Function(EditNoteFailure) _then)
      : super(_value, (v) => _then(v as EditNoteFailure));

  @override
  EditNoteFailure get _value => super._value as EditNoteFailure;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(EditNoteFailure(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditNoteFailure implements EditNoteFailure {
  const _$EditNoteFailure({this.description = 'Error editing Note'});

  @JsonKey(defaultValue: 'Error editing Note')
  @override
  final String description;

  @override
  String toString() {
    return 'NoteFailure.editFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditNoteFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $EditNoteFailureCopyWith<EditNoteFailure> get copyWith =>
      _$EditNoteFailureCopyWithImpl<EditNoteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) fetchFailure,
    required TResult Function(String description) addFailure,
    required TResult Function(String description) removeFailure,
    required TResult Function(String description) editFailure,
  }) {
    return editFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? fetchFailure,
    TResult Function(String description)? addFailure,
    TResult Function(String description)? removeFailure,
    TResult Function(String description)? editFailure,
    required TResult orElse(),
  }) {
    if (editFailure != null) {
      return editFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNoteFailure value) fetchFailure,
    required TResult Function(AddNoteFailure value) addFailure,
    required TResult Function(RemoveNoteFailure value) removeFailure,
    required TResult Function(EditNoteFailure value) editFailure,
  }) {
    return editFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNoteFailure value)? fetchFailure,
    TResult Function(AddNoteFailure value)? addFailure,
    TResult Function(RemoveNoteFailure value)? removeFailure,
    TResult Function(EditNoteFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (editFailure != null) {
      return editFailure(this);
    }
    return orElse();
  }
}

abstract class EditNoteFailure implements NoteFailure {
  const factory EditNoteFailure({String description}) = _$EditNoteFailure;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EditNoteFailureCopyWith<EditNoteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
