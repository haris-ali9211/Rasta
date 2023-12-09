// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Products extends _Products
    with RealmEntity, RealmObjectBase, RealmObject {
  Products(
    String? code, {
    String? name,
    int? version,
    String? hierarchyType,
    String? hierarchyAlias,
    Iterable<String> applicationCreationCriteria = const [],
    Iterable<String> gridColumns = const [],
    Iterable<Stages> stages = const [],
    Iterable<Checklist> checkList = const [],
    Iterable<Conditions> conditions = const [],
    Iterable<GeoFencing> geofencing = const [],
  }) {
    RealmObjectBase.set(this, 'code', code);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'version', version);
    RealmObjectBase.set(this, 'hierarchyType', hierarchyType);
    RealmObjectBase.set(this, 'hierarchyAlias', hierarchyAlias);
    RealmObjectBase.set<RealmList<String>>(this, 'applicationCreationCriteria',
        RealmList<String>(applicationCreationCriteria));
    RealmObjectBase.set<RealmList<String>>(
        this, 'gridColumns', RealmList<String>(gridColumns));
    RealmObjectBase.set<RealmList<Stages>>(
        this, 'stages', RealmList<Stages>(stages));
    RealmObjectBase.set<RealmList<Checklist>>(
        this, 'checkList', RealmList<Checklist>(checkList));
    RealmObjectBase.set<RealmList<Conditions>>(
        this, 'conditions', RealmList<Conditions>(conditions));
    RealmObjectBase.set<RealmList<GeoFencing>>(
        this, 'geofencing', RealmList<GeoFencing>(geofencing));
  }

  Products._();

  @override
  String? get code => RealmObjectBase.get<String>(this, 'code') as String?;
  @override
  set code(String? value) => RealmObjectBase.set(this, 'code', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  int? get version => RealmObjectBase.get<int>(this, 'version') as int?;
  @override
  set version(int? value) => RealmObjectBase.set(this, 'version', value);

  @override
  String? get hierarchyType =>
      RealmObjectBase.get<String>(this, 'hierarchyType') as String?;
  @override
  set hierarchyType(String? value) =>
      RealmObjectBase.set(this, 'hierarchyType', value);

  @override
  String? get hierarchyAlias =>
      RealmObjectBase.get<String>(this, 'hierarchyAlias') as String?;
  @override
  set hierarchyAlias(String? value) =>
      RealmObjectBase.set(this, 'hierarchyAlias', value);

  @override
  RealmList<String> get applicationCreationCriteria =>
      RealmObjectBase.get<String>(this, 'applicationCreationCriteria')
          as RealmList<String>;
  @override
  set applicationCreationCriteria(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get gridColumns =>
      RealmObjectBase.get<String>(this, 'gridColumns') as RealmList<String>;
  @override
  set gridColumns(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Stages> get stages =>
      RealmObjectBase.get<Stages>(this, 'stages') as RealmList<Stages>;
  @override
  set stages(covariant RealmList<Stages> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Checklist> get checkList =>
      RealmObjectBase.get<Checklist>(this, 'checkList') as RealmList<Checklist>;
  @override
  set checkList(covariant RealmList<Checklist> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Conditions> get conditions =>
      RealmObjectBase.get<Conditions>(this, 'conditions')
          as RealmList<Conditions>;
  @override
  set conditions(covariant RealmList<Conditions> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<GeoFencing> get geofencing =>
      RealmObjectBase.get<GeoFencing>(this, 'geofencing')
          as RealmList<GeoFencing>;
  @override
  set geofencing(covariant RealmList<GeoFencing> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Products>> get changes =>
      RealmObjectBase.getChanges<Products>(this);

  @override
  Products freeze() => RealmObjectBase.freezeObject<Products>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Products._);
    return const SchemaObject(ObjectType.realmObject, Products, 'Products', [
      SchemaProperty('code', RealmPropertyType.string,
          optional: true, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('version', RealmPropertyType.int, optional: true),
      SchemaProperty('hierarchyType', RealmPropertyType.string, optional: true),
      SchemaProperty('hierarchyAlias', RealmPropertyType.string,
          optional: true),
      SchemaProperty('applicationCreationCriteria', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('gridColumns', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('stages', RealmPropertyType.object,
          linkTarget: 'Stages', collectionType: RealmCollectionType.list),
      SchemaProperty('checkList', RealmPropertyType.object,
          linkTarget: 'Checklist', collectionType: RealmCollectionType.list),
      SchemaProperty('conditions', RealmPropertyType.object,
          linkTarget: 'Conditions', collectionType: RealmCollectionType.list),
      SchemaProperty('geofencing', RealmPropertyType.object,
          linkTarget: 'GeoFencing', collectionType: RealmCollectionType.list),
    ]);
  }
}

class Stages extends _Stages with RealmEntity, RealmObjectBase, RealmObject {
  Stages({
    String? code,
    String? name,
    Iterable<String> fieldCodes = const [],
    Iterable<Fields> fields = const [],
    Iterable<Authentications> authentications = const [],
  }) {
    RealmObjectBase.set(this, 'code', code);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set<RealmList<String>>(
        this, 'fieldCodes', RealmList<String>(fieldCodes));
    RealmObjectBase.set<RealmList<Fields>>(
        this, 'fields', RealmList<Fields>(fields));
    RealmObjectBase.set<RealmList<Authentications>>(
        this, 'authentications', RealmList<Authentications>(authentications));
  }

  Stages._();

  @override
  String? get code => RealmObjectBase.get<String>(this, 'code') as String?;
  @override
  set code(String? value) => RealmObjectBase.set(this, 'code', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  RealmList<String> get fieldCodes =>
      RealmObjectBase.get<String>(this, 'fieldCodes') as RealmList<String>;
  @override
  set fieldCodes(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Fields> get fields =>
      RealmObjectBase.get<Fields>(this, 'fields') as RealmList<Fields>;
  @override
  set fields(covariant RealmList<Fields> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Authentications> get authentications =>
      RealmObjectBase.get<Authentications>(this, 'authentications')
          as RealmList<Authentications>;
  @override
  set authentications(covariant RealmList<Authentications> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Stages>> get changes =>
      RealmObjectBase.getChanges<Stages>(this);

  @override
  Stages freeze() => RealmObjectBase.freezeObject<Stages>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Stages._);
    return const SchemaObject(ObjectType.realmObject, Stages, 'Stages', [
      SchemaProperty('code', RealmPropertyType.string, optional: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('fieldCodes', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('fields', RealmPropertyType.object,
          linkTarget: 'Fields', collectionType: RealmCollectionType.list),
      SchemaProperty('authentications', RealmPropertyType.object,
          linkTarget: 'Authentications',
          collectionType: RealmCollectionType.list),
    ]);
  }
}

class Fields extends _Fields with RealmEntity, RealmObjectBase, RealmObject {
  Fields({
    String? code,
    String? name,
    String? header,
    String? group,
    bool? isRequired,
    bool? isReadOnly,
    int? priority,
    String? stageName,
  }) {
    RealmObjectBase.set(this, 'code', code);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'header', header);
    RealmObjectBase.set(this, 'group', group);
    RealmObjectBase.set(this, 'isRequired', isRequired);
    RealmObjectBase.set(this, 'isReadOnly', isReadOnly);
    RealmObjectBase.set(this, 'priority', priority);
    RealmObjectBase.set(this, 'stageName', stageName);
  }

  Fields._();

  @override
  String? get code => RealmObjectBase.get<String>(this, 'code') as String?;
  @override
  set code(String? value) => RealmObjectBase.set(this, 'code', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get header => RealmObjectBase.get<String>(this, 'header') as String?;
  @override
  set header(String? value) => RealmObjectBase.set(this, 'header', value);

  @override
  String? get group => RealmObjectBase.get<String>(this, 'group') as String?;
  @override
  set group(String? value) => RealmObjectBase.set(this, 'group', value);

  @override
  bool? get isRequired =>
      RealmObjectBase.get<bool>(this, 'isRequired') as bool?;
  @override
  set isRequired(bool? value) => RealmObjectBase.set(this, 'isRequired', value);

  @override
  bool? get isReadOnly =>
      RealmObjectBase.get<bool>(this, 'isReadOnly') as bool?;
  @override
  set isReadOnly(bool? value) => RealmObjectBase.set(this, 'isReadOnly', value);

  @override
  int? get priority => RealmObjectBase.get<int>(this, 'priority') as int?;
  @override
  set priority(int? value) => RealmObjectBase.set(this, 'priority', value);

  @override
  String? get stageName =>
      RealmObjectBase.get<String>(this, 'stageName') as String?;
  @override
  set stageName(String? value) => RealmObjectBase.set(this, 'stageName', value);

  @override
  Stream<RealmObjectChanges<Fields>> get changes =>
      RealmObjectBase.getChanges<Fields>(this);

  @override
  Fields freeze() => RealmObjectBase.freezeObject<Fields>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Fields._);
    return const SchemaObject(ObjectType.realmObject, Fields, 'Fields', [
      SchemaProperty('code', RealmPropertyType.string, optional: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('header', RealmPropertyType.string, optional: true),
      SchemaProperty('group', RealmPropertyType.string, optional: true),
      SchemaProperty('isRequired', RealmPropertyType.bool, optional: true),
      SchemaProperty('isReadOnly', RealmPropertyType.bool, optional: true),
      SchemaProperty('priority', RealmPropertyType.int, optional: true),
      SchemaProperty('stageName', RealmPropertyType.string, optional: true),
    ]);
  }
}

class Authentications extends _Authentications
    with RealmEntity, RealmObjectBase, RealmObject {
  Authentications({
    int? priority,
    String? name,
    String? code,
  }) {
    RealmObjectBase.set(this, 'priority', priority);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'code', code);
  }

  Authentications._();

  @override
  int? get priority => RealmObjectBase.get<int>(this, 'priority') as int?;
  @override
  set priority(int? value) => RealmObjectBase.set(this, 'priority', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get code => RealmObjectBase.get<String>(this, 'code') as String?;
  @override
  set code(String? value) => RealmObjectBase.set(this, 'code', value);

  @override
  Stream<RealmObjectChanges<Authentications>> get changes =>
      RealmObjectBase.getChanges<Authentications>(this);

  @override
  Authentications freeze() =>
      RealmObjectBase.freezeObject<Authentications>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Authentications._);
    return const SchemaObject(
        ObjectType.realmObject, Authentications, 'Authentications', [
      SchemaProperty('priority', RealmPropertyType.int, optional: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('code', RealmPropertyType.string, optional: true),
    ]);
  }
}

class Representations extends _Representations
    with RealmEntity, RealmObjectBase, RealmObject {
  Representations({
    String? representationValue,
    int? representationType,
  }) {
    RealmObjectBase.set(this, 'representationValue', representationValue);
    RealmObjectBase.set(this, 'representationType', representationType);
  }

  Representations._();

  @override
  String? get representationValue =>
      RealmObjectBase.get<String>(this, 'representationValue') as String?;
  @override
  set representationValue(String? value) =>
      RealmObjectBase.set(this, 'representationValue', value);

  @override
  int? get representationType =>
      RealmObjectBase.get<int>(this, 'representationType') as int?;
  @override
  set representationType(int? value) =>
      RealmObjectBase.set(this, 'representationType', value);

  @override
  Stream<RealmObjectChanges<Representations>> get changes =>
      RealmObjectBase.getChanges<Representations>(this);

  @override
  Representations freeze() =>
      RealmObjectBase.freezeObject<Representations>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Representations._);
    return const SchemaObject(
        ObjectType.realmObject, Representations, 'Representations', [
      SchemaProperty('representationValue', RealmPropertyType.string,
          optional: true),
      SchemaProperty('representationType', RealmPropertyType.int,
          optional: true),
    ]);
  }
}

class Conditions extends _Conditions
    with RealmEntity, RealmObjectBase, RealmObject {
  Conditions({
    String? name,
    String? code,
    Expression? expression,
    bool? validationStatus,
    Iterable<String> stageCodes = const [],
    Iterable<Outcomes> outcomes = const [],
  }) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'code', code);
    RealmObjectBase.set(this, 'expression', expression);
    RealmObjectBase.set(this, 'validationStatus', validationStatus);
    RealmObjectBase.set<RealmList<String>>(
        this, 'stageCodes', RealmList<String>(stageCodes));
    RealmObjectBase.set<RealmList<Outcomes>>(
        this, 'outcomes', RealmList<Outcomes>(outcomes));
  }

  Conditions._();

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get code => RealmObjectBase.get<String>(this, 'code') as String?;
  @override
  set code(String? value) => RealmObjectBase.set(this, 'code', value);

  @override
  RealmList<String> get stageCodes =>
      RealmObjectBase.get<String>(this, 'stageCodes') as RealmList<String>;
  @override
  set stageCodes(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  Expression? get expression =>
      RealmObjectBase.get<Expression>(this, 'expression') as Expression?;
  @override
  set expression(covariant Expression? value) =>
      RealmObjectBase.set(this, 'expression', value);

  @override
  RealmList<Outcomes> get outcomes =>
      RealmObjectBase.get<Outcomes>(this, 'outcomes') as RealmList<Outcomes>;
  @override
  set outcomes(covariant RealmList<Outcomes> value) =>
      throw RealmUnsupportedSetError();

  @override
  bool? get validationStatus =>
      RealmObjectBase.get<bool>(this, 'validationStatus') as bool?;
  @override
  set validationStatus(bool? value) =>
      RealmObjectBase.set(this, 'validationStatus', value);

  @override
  Stream<RealmObjectChanges<Conditions>> get changes =>
      RealmObjectBase.getChanges<Conditions>(this);

  @override
  Conditions freeze() => RealmObjectBase.freezeObject<Conditions>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Conditions._);
    return const SchemaObject(
        ObjectType.realmObject, Conditions, 'Conditions', [
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('code', RealmPropertyType.string, optional: true),
      SchemaProperty('stageCodes', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('expression', RealmPropertyType.object,
          optional: true, linkTarget: 'Expression'),
      SchemaProperty('outcomes', RealmPropertyType.object,
          linkTarget: 'Outcomes', collectionType: RealmCollectionType.list),
      SchemaProperty('validationStatus', RealmPropertyType.bool,
          optional: true),
    ]);
  }
}

class Expression extends _Expression
    with RealmEntity, RealmObjectBase, RealmObject {
  Expression({
    String? expressionTree,
    Iterable<Representations> representations = const [],
  }) {
    RealmObjectBase.set(this, 'expressionTree', expressionTree);
    RealmObjectBase.set<RealmList<Representations>>(
        this, 'representations', RealmList<Representations>(representations));
  }

  Expression._();

  @override
  String? get expressionTree =>
      RealmObjectBase.get<String>(this, 'expressionTree') as String?;
  @override
  set expressionTree(String? value) =>
      RealmObjectBase.set(this, 'expressionTree', value);

  @override
  RealmList<Representations> get representations =>
      RealmObjectBase.get<Representations>(this, 'representations')
          as RealmList<Representations>;
  @override
  set representations(covariant RealmList<Representations> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Expression>> get changes =>
      RealmObjectBase.getChanges<Expression>(this);

  @override
  Expression freeze() => RealmObjectBase.freezeObject<Expression>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Expression._);
    return const SchemaObject(
        ObjectType.realmObject, Expression, 'Expression', [
      SchemaProperty('expressionTree', RealmPropertyType.string,
          optional: true),
      SchemaProperty('representations', RealmPropertyType.object,
          linkTarget: 'Representations',
          collectionType: RealmCollectionType.list),
    ]);
  }
}

class Outcomes extends _Outcomes
    with RealmEntity, RealmObjectBase, RealmObject {
  Outcomes({
    String? code,
    int? type,
    String? group,
    String? header,
    bool? isReadOnly,
    bool? isRequired,
    bool? isHidden,
    int? priority,
    String? value,
    String? masterDataType,
    String? minLength,
    String? maxLength,
  }) {
    RealmObjectBase.set(this, 'code', code);
    RealmObjectBase.set(this, 'type', type);
    RealmObjectBase.set(this, 'group', group);
    RealmObjectBase.set(this, 'header', header);
    RealmObjectBase.set(this, 'isReadOnly', isReadOnly);
    RealmObjectBase.set(this, 'isRequired', isRequired);
    RealmObjectBase.set(this, 'isHidden', isHidden);
    RealmObjectBase.set(this, 'priority', priority);
    RealmObjectBase.set(this, 'value', value);
    RealmObjectBase.set(this, 'masterDataType', masterDataType);
    RealmObjectBase.set(this, 'minLength', minLength);
    RealmObjectBase.set(this, 'maxLength', maxLength);
  }

  Outcomes._();

  @override
  String? get code => RealmObjectBase.get<String>(this, 'code') as String?;
  @override
  set code(String? value) => RealmObjectBase.set(this, 'code', value);

  @override
  int? get type => RealmObjectBase.get<int>(this, 'type') as int?;
  @override
  set type(int? value) => RealmObjectBase.set(this, 'type', value);

  @override
  String? get group => RealmObjectBase.get<String>(this, 'group') as String?;
  @override
  set group(String? value) => RealmObjectBase.set(this, 'group', value);

  @override
  String? get header => RealmObjectBase.get<String>(this, 'header') as String?;
  @override
  set header(String? value) => RealmObjectBase.set(this, 'header', value);

  @override
  bool? get isReadOnly =>
      RealmObjectBase.get<bool>(this, 'isReadOnly') as bool?;
  @override
  set isReadOnly(bool? value) => RealmObjectBase.set(this, 'isReadOnly', value);

  @override
  bool? get isRequired =>
      RealmObjectBase.get<bool>(this, 'isRequired') as bool?;
  @override
  set isRequired(bool? value) => RealmObjectBase.set(this, 'isRequired', value);

  @override
  bool? get isHidden => RealmObjectBase.get<bool>(this, 'isHidden') as bool?;
  @override
  set isHidden(bool? value) => RealmObjectBase.set(this, 'isHidden', value);

  @override
  int? get priority => RealmObjectBase.get<int>(this, 'priority') as int?;
  @override
  set priority(int? value) => RealmObjectBase.set(this, 'priority', value);

  @override
  String? get value => RealmObjectBase.get<String>(this, 'value') as String?;
  @override
  set value(String? value) => RealmObjectBase.set(this, 'value', value);

  @override
  String? get masterDataType =>
      RealmObjectBase.get<String>(this, 'masterDataType') as String?;
  @override
  set masterDataType(String? value) =>
      RealmObjectBase.set(this, 'masterDataType', value);

  @override
  String? get minLength =>
      RealmObjectBase.get<String>(this, 'minLength') as String?;
  @override
  set minLength(String? value) => RealmObjectBase.set(this, 'minLength', value);

  @override
  String? get maxLength =>
      RealmObjectBase.get<String>(this, 'maxLength') as String?;
  @override
  set maxLength(String? value) => RealmObjectBase.set(this, 'maxLength', value);

  @override
  Stream<RealmObjectChanges<Outcomes>> get changes =>
      RealmObjectBase.getChanges<Outcomes>(this);

  @override
  Outcomes freeze() => RealmObjectBase.freezeObject<Outcomes>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Outcomes._);
    return const SchemaObject(ObjectType.realmObject, Outcomes, 'Outcomes', [
      SchemaProperty('code', RealmPropertyType.string, optional: true),
      SchemaProperty('type', RealmPropertyType.int, optional: true),
      SchemaProperty('group', RealmPropertyType.string, optional: true),
      SchemaProperty('header', RealmPropertyType.string, optional: true),
      SchemaProperty('isReadOnly', RealmPropertyType.bool, optional: true),
      SchemaProperty('isRequired', RealmPropertyType.bool, optional: true),
      SchemaProperty('isHidden', RealmPropertyType.bool, optional: true),
      SchemaProperty('priority', RealmPropertyType.int, optional: true),
      SchemaProperty('value', RealmPropertyType.string, optional: true),
      SchemaProperty('masterDataType', RealmPropertyType.string,
          optional: true),
      SchemaProperty('minLength', RealmPropertyType.string, optional: true),
      SchemaProperty('maxLength', RealmPropertyType.string, optional: true),
    ]);
  }
}

class GeoFencing extends _GeoFencing
    with RealmEntity, RealmObjectBase, RealmObject {
  GeoFencing({
    String? name,
    String? code,
    String? sourceLongitude,
    String? sourceLatitude,
    String? destinationLongitude,
    String? destinationLatitude,
    int? radius,
    int? priority,
    Iterable<String> stages = const [],
  }) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'code', code);
    RealmObjectBase.set(this, 'sourceLongitude', sourceLongitude);
    RealmObjectBase.set(this, 'sourceLatitude', sourceLatitude);
    RealmObjectBase.set(this, 'destinationLongitude', destinationLongitude);
    RealmObjectBase.set(this, 'destinationLatitude', destinationLatitude);
    RealmObjectBase.set(this, 'radius', radius);
    RealmObjectBase.set(this, 'priority', priority);
    RealmObjectBase.set<RealmList<String>>(
        this, 'stages', RealmList<String>(stages));
  }

  GeoFencing._();

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get code => RealmObjectBase.get<String>(this, 'code') as String?;
  @override
  set code(String? value) => RealmObjectBase.set(this, 'code', value);

  @override
  String? get sourceLongitude =>
      RealmObjectBase.get<String>(this, 'sourceLongitude') as String?;
  @override
  set sourceLongitude(String? value) =>
      RealmObjectBase.set(this, 'sourceLongitude', value);

  @override
  String? get sourceLatitude =>
      RealmObjectBase.get<String>(this, 'sourceLatitude') as String?;
  @override
  set sourceLatitude(String? value) =>
      RealmObjectBase.set(this, 'sourceLatitude', value);

  @override
  String? get destinationLongitude =>
      RealmObjectBase.get<String>(this, 'destinationLongitude') as String?;
  @override
  set destinationLongitude(String? value) =>
      RealmObjectBase.set(this, 'destinationLongitude', value);

  @override
  String? get destinationLatitude =>
      RealmObjectBase.get<String>(this, 'destinationLatitude') as String?;
  @override
  set destinationLatitude(String? value) =>
      RealmObjectBase.set(this, 'destinationLatitude', value);

  @override
  int? get radius => RealmObjectBase.get<int>(this, 'radius') as int?;
  @override
  set radius(int? value) => RealmObjectBase.set(this, 'radius', value);

  @override
  RealmList<String> get stages =>
      RealmObjectBase.get<String>(this, 'stages') as RealmList<String>;
  @override
  set stages(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  int? get priority => RealmObjectBase.get<int>(this, 'priority') as int?;
  @override
  set priority(int? value) => RealmObjectBase.set(this, 'priority', value);

  @override
  Stream<RealmObjectChanges<GeoFencing>> get changes =>
      RealmObjectBase.getChanges<GeoFencing>(this);

  @override
  GeoFencing freeze() => RealmObjectBase.freezeObject<GeoFencing>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(GeoFencing._);
    return const SchemaObject(
        ObjectType.realmObject, GeoFencing, 'GeoFencing', [
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('code', RealmPropertyType.string, optional: true),
      SchemaProperty('sourceLongitude', RealmPropertyType.string,
          optional: true),
      SchemaProperty('sourceLatitude', RealmPropertyType.string,
          optional: true),
      SchemaProperty('destinationLongitude', RealmPropertyType.string,
          optional: true),
      SchemaProperty('destinationLatitude', RealmPropertyType.string,
          optional: true),
      SchemaProperty('radius', RealmPropertyType.int, optional: true),
      SchemaProperty('stages', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('priority', RealmPropertyType.int, optional: true),
    ]);
  }
}

class Checklist extends _Checklist
    with RealmEntity, RealmObjectBase, RealmObject {
  Checklist({
    int? status,
    String? name,
    String? code,
    bool? isMandatory,
    int? type,
    bool? isGrid,
    String? gridCode,
    String? gridIdentifier,
    String? additionalInformation,
    bool? isFetchLocation,
    String? latitudeFieldCode,
    String? longitudeFieldCode,
    Iterable<String> stages = const [],
  }) {
    RealmObjectBase.set(this, 'status', status);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'code', code);
    RealmObjectBase.set(this, 'isMandatory', isMandatory);
    RealmObjectBase.set(this, 'type', type);
    RealmObjectBase.set(this, 'isGrid', isGrid);
    RealmObjectBase.set(this, 'gridCode', gridCode);
    RealmObjectBase.set(this, 'gridIdentifier', gridIdentifier);
    RealmObjectBase.set(this, 'additionalInformation', additionalInformation);
    RealmObjectBase.set(this, 'isFetchLocation', isFetchLocation);
    RealmObjectBase.set(this, 'latitudeFieldCode', latitudeFieldCode);
    RealmObjectBase.set(this, 'longitudeFieldCode', longitudeFieldCode);
    RealmObjectBase.set<RealmList<String>>(
        this, 'stages', RealmList<String>(stages));
  }

  Checklist._();

  @override
  int? get status => RealmObjectBase.get<int>(this, 'status') as int?;
  @override
  set status(int? value) => RealmObjectBase.set(this, 'status', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get code => RealmObjectBase.get<String>(this, 'code') as String?;
  @override
  set code(String? value) => RealmObjectBase.set(this, 'code', value);

  @override
  RealmList<String> get stages =>
      RealmObjectBase.get<String>(this, 'stages') as RealmList<String>;
  @override
  set stages(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  bool? get isMandatory =>
      RealmObjectBase.get<bool>(this, 'isMandatory') as bool?;
  @override
  set isMandatory(bool? value) =>
      RealmObjectBase.set(this, 'isMandatory', value);

  @override
  int? get type => RealmObjectBase.get<int>(this, 'type') as int?;
  @override
  set type(int? value) => RealmObjectBase.set(this, 'type', value);

  @override
  bool? get isGrid => RealmObjectBase.get<bool>(this, 'isGrid') as bool?;
  @override
  set isGrid(bool? value) => RealmObjectBase.set(this, 'isGrid', value);

  @override
  String? get gridCode =>
      RealmObjectBase.get<String>(this, 'gridCode') as String?;
  @override
  set gridCode(String? value) => RealmObjectBase.set(this, 'gridCode', value);

  @override
  String? get gridIdentifier =>
      RealmObjectBase.get<String>(this, 'gridIdentifier') as String?;
  @override
  set gridIdentifier(String? value) =>
      RealmObjectBase.set(this, 'gridIdentifier', value);

  @override
  String? get additionalInformation =>
      RealmObjectBase.get<String>(this, 'additionalInformation') as String?;
  @override
  set additionalInformation(String? value) =>
      RealmObjectBase.set(this, 'additionalInformation', value);

  @override
  bool? get isFetchLocation =>
      RealmObjectBase.get<bool>(this, 'isFetchLocation') as bool?;
  @override
  set isFetchLocation(bool? value) =>
      RealmObjectBase.set(this, 'isFetchLocation', value);

  @override
  String? get latitudeFieldCode =>
      RealmObjectBase.get<String>(this, 'latitudeFieldCode') as String?;
  @override
  set latitudeFieldCode(String? value) =>
      RealmObjectBase.set(this, 'latitudeFieldCode', value);

  @override
  String? get longitudeFieldCode =>
      RealmObjectBase.get<String>(this, 'longitudeFieldCode') as String?;
  @override
  set longitudeFieldCode(String? value) =>
      RealmObjectBase.set(this, 'longitudeFieldCode', value);

  @override
  Stream<RealmObjectChanges<Checklist>> get changes =>
      RealmObjectBase.getChanges<Checklist>(this);

  @override
  Checklist freeze() => RealmObjectBase.freezeObject<Checklist>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Checklist._);
    return const SchemaObject(ObjectType.realmObject, Checklist, 'Checklist', [
      SchemaProperty('status', RealmPropertyType.int, optional: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('code', RealmPropertyType.string, optional: true),
      SchemaProperty('stages', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('isMandatory', RealmPropertyType.bool, optional: true),
      SchemaProperty('type', RealmPropertyType.int, optional: true),
      SchemaProperty('isGrid', RealmPropertyType.bool, optional: true),
      SchemaProperty('gridCode', RealmPropertyType.string, optional: true),
      SchemaProperty('gridIdentifier', RealmPropertyType.string,
          optional: true),
      SchemaProperty('additionalInformation', RealmPropertyType.string,
          optional: true),
      SchemaProperty('isFetchLocation', RealmPropertyType.bool, optional: true),
      SchemaProperty('latitudeFieldCode', RealmPropertyType.string,
          optional: true),
      SchemaProperty('longitudeFieldCode', RealmPropertyType.string,
          optional: true),
    ]);
  }
}
