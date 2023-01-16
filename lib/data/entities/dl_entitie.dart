class DlEntities {
  final int dlId;
  final String companyTitle;
  final int companyRef;
  final String phoneNumber;
  final String fName;
  final String lName;
  final String fullName;
  final String email;
  final String createdate;
  final String eparchyName;
  final String cityName;
  DlEntities.fromJson(Map<String, dynamic> json)
      : dlId = json['dlId'],
        companyTitle = json['companyTitle'],
        companyRef = json['companyRef'],
        phoneNumber = json['phoneNumber'],
        fName = json['fName'],
        lName = json['lName'],
        fullName = json['fullName'],
        email = json['email'],
        createdate = json['createdate'],
        eparchyName = json['eparchyName'],
        cityName = json['cityName'];
}
