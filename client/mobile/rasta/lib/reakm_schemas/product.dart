import 'package:realm/realm.dart';

part 'product.g.dart';

@RealmModel()
class _Products {
  @PrimaryKey()
  late String? code;
  late String? name;
  late int? version;
  late String? hierarchyType;
  late String? hierarchyAlias;
  late List<String> applicationCreationCriteria;
  late List<String> gridColumns;
  late List<_Stages> stages;
  late List<_Checklist> checkList;
  late List<_Conditions> conditions;
  late List<_GeoFencing> geofencing;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'code': code,
      'name': name,
      'version': version,
      'hierarchyType': hierarchyType,
      'hierarchyAlias': hierarchyAlias,
      'applicationCreationCriteria': applicationCreationCriteria,
      'gridColumns': gridColumns,
      'stages': stages.map((stage) {
        return {
          'code': stage.code,
          'name': stage.name,
          'fieldCodes': stage.fieldCodes,
          'fields': stage.fields.map((field) {
            return {
              'code': field.code,
              'name': field.name,
              'header': field.header,
              'group': field.group,
              'isRequired': field.isRequired,
              'isReadOnly': field.isReadOnly,
              'priority': field.priority,
              'stageName': field.stageName,
            };
          }).toList(),
          'authentications': stage.authentications.map((authentication) {
            return {
              'priority': authentication.priority,
              'name': authentication.name,
              "code": authentication.code,
            };
          }).toList(),
        };
      }).toList(),
      'checkList': checkList.map((item) {
        return {
          "status": item.status,
          "name": item.name,
          "code": item.code,
          "stages": item.stages,
          "isMandatory": item.isMandatory,
          "type": item.type,
          "isGrid": item.isGrid,
          "gridCode": item.gridCode,
          "gridIdentifier": item.gridIdentifier,
          "additionalInformation": item.additionalInformation,
          "isFetchLocation": item.isFetchLocation,
          "latitudeFieldCode": item.latitudeFieldCode,
          "longitudeFieldCode": item.longitudeFieldCode,
        };
      }).toList(),
      'conditions': conditions.map((condition) {
        return {
          "name": condition.name,
          "code": condition.code,
          "stageCodes": condition.stageCodes,
          "validationStatus": condition.validationStatus,
          "expression": {
            "expressionTree": condition.expression?.expressionTree,
            "representations":
            condition.expression?.representations.map((representation) {
              return {
                "representationValue": representation.representationValue,
                "representationType": representation.representationType,
              };
            }).toList(),
          },
          "outcomes": condition.outcomes.map((outcome) {
            return {
              "code": outcome.code,
              "type": outcome.type,
              "group": outcome.group,
              "header": outcome.header,
              "isReadOnly": outcome.isReadOnly,
              "isRequired": outcome.isRequired,
              "isHidden": outcome.isHidden,
              "priority": outcome.priority,
              "value": outcome.value,
              "masterDataType": outcome.masterDataType,
              "minLength": outcome.minLength,
              "maxLength": outcome.maxLength,
            };
          }).toList(),
        };
      }).toList(),
      "geofencing": geofencing.map((item) {
        return {
          "name": item.name,
          "code": item.code,
          "sourceLongitude": item.sourceLongitude,
          "sourceLatitude": item.sourceLatitude,
          "destinationLongitude": item.destinationLongitude,
          "destinationLatitude": item.destinationLatitude,
          "radius": item.radius,
          "stages": item.stages,
          "priority": item.priority,
        };
      }).toList(),
    };
    return data;
  }
}

@RealmModel()
class _Stages {
  late String? code;
  late String? name;
  late List<String> fieldCodes;
  late List<_Fields> fields;
  late List<_Authentications> authentications;
}

@RealmModel()
class _Fields {
  late String? code;
  late String? name;
  late String? header;
  late String? group;
  late bool? isRequired;
  late bool? isReadOnly;
  late int? priority;
  late String? stageName;
}

@RealmModel()
class _Authentications {
  late int? priority;
  late String? name;
  late String? code;
}

@RealmModel()
class _Representations {
  late String? representationValue;
  late int? representationType;
}

@RealmModel()
class _Conditions {
  late String? name;
  late String? code;
  late List<String> stageCodes;
  late _Expression? expression;
  late List<_Outcomes> outcomes;
  late bool? validationStatus;
}

@RealmModel()
class _Expression {
  late String? expressionTree;
  late List<_Representations> representations;
}

@RealmModel()
class _Outcomes {
  late String? code;
  late int? type;
  late String? group;
  late String? header;
  late bool? isReadOnly;
  late bool? isRequired;
  late bool? isHidden;
  late int? priority;
  late String? value;
  late String? masterDataType;
  late String? minLength;
  late String? maxLength;
}

@RealmModel()
class _GeoFencing {
  late String? name;
  late String? code;
  late String? sourceLongitude;
  late String? sourceLatitude;
  late String? destinationLongitude;
  late String? destinationLatitude;
  late int? radius;
  late List<String> stages;
  late int? priority;
}

@RealmModel()
class _Checklist {
  late int? status;
  late String? name;
  late String? code;
  late List<String> stages;
  late bool? isMandatory;
  late int? type;
  late bool? isGrid;
  late String? gridCode;
  late String? gridIdentifier;
  late String? additionalInformation;
  late bool? isFetchLocation;
  late String? latitudeFieldCode;
  late String? longitudeFieldCode;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      "status": status,
      "name": name,
      "code": code,
      "stages": stages,
      "isMandatory": isMandatory,
      "type": type,
      "isGrid": isGrid,
      "gridCode": gridCode,
      "gridIdentifier": gridIdentifier,
      "additionalInformation": additionalInformation,
      "isFetchLocation": isFetchLocation,
      "latitudeFieldCode": latitudeFieldCode,
      "longitudeFieldCode": longitudeFieldCode,
    };
    return data;
  }
}
