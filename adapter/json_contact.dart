import 'dart:convert';

class JsonContact {
  String _contact = '''
    {
      "contacts": [
        {
          "id": "id1",
          "firstName": "fistName1",
          "lastName": "lastName1",
          "mailAddress": "mail1@gmail.com"
        },
        {
          "id": "id2",
          "firstName": "fistName2",
          "lastName": "lastName2",
          "mailAddress": "mail2@gmail.com"
        }
      ]
    }
  ''';

  Map get jsonDecode => json.decode(_contact);
}
