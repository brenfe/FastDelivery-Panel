import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ProRequestEmailCall {
  static Future<ApiCallResponse> call({
    String? destinationEmail = 'teamtagalong@tagalongwithapro.com',
    String? name = '',
    String? sport = '',
    String? city = '',
    String? state = '',
    String? senderEmail = 'prorequest@tagalongwithapro.com',
  }) async {
    final ffApiRequestBody = '''
{
  "from": {
    "email": "${senderEmail}"
  },
  "personalizations": [
    {
      "to": [
        {
          "email": "${destinationEmail}"
        }
      ],
      "dynamic_template_data": {
        "name": "${name}",
        "sport": "${sport}",
        "city": "${city}",
        "state": "${state}"
      }
    }
  ],
  "template_id": "d-996803a281c648fc9c3cc3a898a2dc42"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'proRequestEmail',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
