class DlRefEntities {
  final int dlId;
  final String companyTitle;
  final int companyRef;
  final String fName;
  final String lName;
  final String fullName;
  final String nationalCode;
  final String email;
  final String createdate;
  final bool del;
  final bool isActive;
  final String eparchyName;
  final String cityName;
  final String postalCode;

  final String roleTitle;
  final String avatar;

  DlRefEntities.fromJson(Map<String, dynamic> json)
      : dlId = json['dlId'],
        companyTitle = json['companyTitle'],
        companyRef = json['companyRef'],
        fName = json['fName'],
        lName = json['lName'],
        fullName = json['fullName'],
        nationalCode = json['nationalCode'],
        email = json['email'],
        createdate = json['createdate'],
        del = json['del'],
        isActive = json['isActive'],
        eparchyName = json['eparchyName'],
        cityName = json['cityName'],
        postalCode = json['postalCode'],
        roleTitle = json['roleTitle'],
        avatar = json['avatar'];
}
