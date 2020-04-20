class BorrowerInformation {
    String accountName;
    String accountNo;
    int accountType;
    String accountUserName;
    String address;
    String addressWork;
    bool bankAccountNoModifyFlag;
    int bankCode;
    String bankName;
    String barangay;
    String barangayDesc;
    String barangayDescWork;
    String barangayWork;
    String birthday;
    String city;
    String cityDesc;
    String cityDescWork;
    String cityWork;
    bool coinsAccountNoModifyFlag;
    String comNameWork;
    String czzImgDomainPath;
    String czzImgPath;
    String czzMirrorImgDomainPath;
    String czzMirrorImgPath;
    String dependentNumber;
    String educationLevel;
    String email;
    List<EmergencyContact> emergencyContactList;
    String facebookId;
    String facebookTaskId;
    String facebookUserName;
    String firstName;
    bool gcashAccountNoModifyFlag;
    String idCardBackImgDomainPath;
    String idCardBackImgPath;
    String idCardFrontImgDomainPath;
    String idCardFrontImgPath;
    String idCardNo;
    int idCardType;
    String idCardTypeDesc;
    String incomeDomainPathWork;
    String incomePathWork;
    String incomeSourceWork;
    String incomeWork;
    String industryTypeWork;
    String industryWork;
    String lastName;
    String lazadaId;
    String lazadaUserName;
    String location;
    String maritalStatus;
    String middleName;
    String officeNoWork;
    String otherPhone;
    String payCycleWork;
    String paydayFourWork;
    String paydayOneWork;
    String paydayThreeWork;
    String paydayTwoWork;
    String phone;
    String posLevelWork;
    String province;
    String provinceDesc;
    String provinceDescWork;
    String provinceWork;
    String region;
    String regionDesc;
    String regionDescWork;
    String regionWork;
    String sex;
    String workBeginTime;
    String workYearsWork;

    BorrowerInformation({this.accountName, this.accountNo, this.accountType, this.accountUserName, this.address, this.addressWork, this.bankAccountNoModifyFlag, this.bankCode, this.bankName, this.barangay, this.barangayDesc, this.barangayDescWork, this.barangayWork, this.birthday, this.city, this.cityDesc, this.cityDescWork, this.cityWork, this.coinsAccountNoModifyFlag, this.comNameWork, this.czzImgDomainPath, this.czzImgPath, this.czzMirrorImgDomainPath, this.czzMirrorImgPath, this.dependentNumber, this.educationLevel, this.email, this.emergencyContactList, this.facebookId, this.facebookTaskId, this.facebookUserName, this.firstName, this.gcashAccountNoModifyFlag, this.idCardBackImgDomainPath, this.idCardBackImgPath, this.idCardFrontImgDomainPath, this.idCardFrontImgPath, this.idCardNo, this.idCardType, this.idCardTypeDesc, this.incomeDomainPathWork, this.incomePathWork, this.incomeSourceWork, this.incomeWork, this.industryTypeWork, this.industryWork, this.lastName, this.lazadaId, this.lazadaUserName, this.location, this.maritalStatus, this.middleName, this.officeNoWork, this.otherPhone, this.payCycleWork, this.paydayFourWork, this.paydayOneWork, this.paydayThreeWork, this.paydayTwoWork, this.phone, this.posLevelWork, this.province, this.provinceDesc, this.provinceDescWork, this.provinceWork, this.region, this.regionDesc, this.regionDescWork, this.regionWork, this.sex, this.workBeginTime, this.workYearsWork});

    factory BorrowerInformation.fromJson(Map<String, dynamic> json) {
        return BorrowerInformation(
            accountName: json['accountName'],
            accountNo: json['accountNo'],
            accountType: json['accountType'],
            accountUserName: json['accountUserName'],
            address: json['address'],
            addressWork: json['addressWork'],
            bankAccountNoModifyFlag: json['bankAccountNoModifyFlag'],
            bankCode: json['bankCode'],
            bankName: json['bankName'],
            barangay: json['barangay'],
            barangayDesc: json['barangayDesc'],
            barangayDescWork: json['barangayDescWork'],
            barangayWork: json['barangayWork'],
            birthday: json['birthday'],
            city: json['city'],
            cityDesc: json['cityDesc'],
            cityDescWork: json['cityDescWork'],
            cityWork: json['cityWork'],
            coinsAccountNoModifyFlag: json['coinsAccountNoModifyFlag'],
            comNameWork: json['comNameWork'],
            czzImgDomainPath: json['czzImgDomainPath'],
            czzImgPath: json['czzImgPath'],
            czzMirrorImgDomainPath: json['czzMirrorImgDomainPath'],
            czzMirrorImgPath: json['czzMirrorImgPath'],
            dependentNumber: json['dependentNumber'],
            educationLevel: json['educationLevel'],
            email: json['email'],
            emergencyContactList: json['emergencyContactList'] != null ? (json['emergencyContactList'] as List).map((i) => EmergencyContact.fromJson(i)).toList() : null,
            facebookId: json['facebookId'],
            facebookTaskId: json['facebookTaskId'],
            facebookUserName: json['facebookUserName'],
            firstName: json['firstName'],
            gcashAccountNoModifyFlag: json['gcashAccountNoModifyFlag'],
            idCardBackImgDomainPath: json['idCardBackImgDomainPath'],
            idCardBackImgPath: json['idCardBackImgPath'],
            idCardFrontImgDomainPath: json['idCardFrontImgDomainPath'],
            idCardFrontImgPath: json['idCardFrontImgPath'],
            idCardNo: json['idCardNo'],
            idCardType: json['idCardType'],
            idCardTypeDesc: json['idCardTypeDesc'],
            incomeDomainPathWork: json['incomeDomainPathWork'],
            incomePathWork: json['incomePathWork'],
            incomeSourceWork: json['incomeSourceWork'],
            incomeWork: json['incomeWork'],
            industryTypeWork: json['industryTypeWork'],
            industryWork: json['industryWork'],
            lastName: json['lastName'],
            lazadaId: json['lazadaId'],
            lazadaUserName: json['lazadaUserName'],
            location: json['location'],
            maritalStatus: json['maritalStatus'],
            middleName: json['middleName'],
            officeNoWork: json['officeNoWork'],
            otherPhone: json['otherPhone'],
            payCycleWork: json['payCycleWork'],
            paydayFourWork: json['paydayFourWork'],
            paydayOneWork: json['paydayOneWork'],
            paydayThreeWork: json['paydayThreeWork'],
            paydayTwoWork: json['paydayTwoWork'],
            phone: json['phone'],
            posLevelWork: json['posLevelWork'],
            province: json['province'],
            provinceDesc: json['provinceDesc'],
            provinceDescWork: json['provinceDescWork'],
            provinceWork: json['provinceWork'],
            region: json['region'],
            regionDesc: json['regionDesc'],
            regionDescWork: json['regionDescWork'],
            regionWork: json['regionWork'],
            sex: json['sex'],
            workBeginTime: json['workBeginTime'],
            workYearsWork: json['workYearsWork'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['accountName'] = this.accountName;
        data['accountNo'] = this.accountNo;
        data['accountType'] = this.accountType;
        data['accountUserName'] = this.accountUserName;
        data['address'] = this.address;
        data['addressWork'] = this.addressWork;
        data['bankAccountNoModifyFlag'] = this.bankAccountNoModifyFlag;
        data['bankCode'] = this.bankCode;
        data['bankName'] = this.bankName;
        data['barangay'] = this.barangay;
        data['barangayDesc'] = this.barangayDesc;
        data['barangayDescWork'] = this.barangayDescWork;
        data['barangayWork'] = this.barangayWork;
        data['birthday'] = this.birthday;
        data['city'] = this.city;
        data['cityDesc'] = this.cityDesc;
        data['cityDescWork'] = this.cityDescWork;
        data['cityWork'] = this.cityWork;
        data['coinsAccountNoModifyFlag'] = this.coinsAccountNoModifyFlag;
        data['comNameWork'] = this.comNameWork;
        data['czzImgDomainPath'] = this.czzImgDomainPath;
        data['czzImgPath'] = this.czzImgPath;
        data['czzMirrorImgDomainPath'] = this.czzMirrorImgDomainPath;
        data['czzMirrorImgPath'] = this.czzMirrorImgPath;
        data['dependentNumber'] = this.dependentNumber;
        data['educationLevel'] = this.educationLevel;
        data['email'] = this.email;
        data['facebookId'] = this.facebookId;
        data['facebookTaskId'] = this.facebookTaskId;
        data['facebookUserName'] = this.facebookUserName;
        data['firstName'] = this.firstName;
        data['gcashAccountNoModifyFlag'] = this.gcashAccountNoModifyFlag;
        data['idCardBackImgDomainPath'] = this.idCardBackImgDomainPath;
        data['idCardBackImgPath'] = this.idCardBackImgPath;
        data['idCardFrontImgDomainPath'] = this.idCardFrontImgDomainPath;
        data['idCardFrontImgPath'] = this.idCardFrontImgPath;
        data['idCardNo'] = this.idCardNo;
        data['idCardType'] = this.idCardType;
        data['idCardTypeDesc'] = this.idCardTypeDesc;
        data['incomeDomainPathWork'] = this.incomeDomainPathWork;
        data['incomePathWork'] = this.incomePathWork;
        data['incomeSourceWork'] = this.incomeSourceWork;
        data['incomeWork'] = this.incomeWork;
        data['industryTypeWork'] = this.industryTypeWork;
        data['industryWork'] = this.industryWork;
        data['lastName'] = this.lastName;
        data['lazadaId'] = this.lazadaId;
        data['lazadaUserName'] = this.lazadaUserName;
        data['location'] = this.location;
        data['maritalStatus'] = this.maritalStatus;
        data['middleName'] = this.middleName;
        data['officeNoWork'] = this.officeNoWork;
        data['otherPhone'] = this.otherPhone;
        data['payCycleWork'] = this.payCycleWork;
        data['paydayFourWork'] = this.paydayFourWork;
        data['paydayOneWork'] = this.paydayOneWork;
        data['paydayThreeWork'] = this.paydayThreeWork;
        data['paydayTwoWork'] = this.paydayTwoWork;
        data['phone'] = this.phone;
        data['posLevelWork'] = this.posLevelWork;
        data['province'] = this.province;
        data['provinceDesc'] = this.provinceDesc;
        data['provinceDescWork'] = this.provinceDescWork;
        data['provinceWork'] = this.provinceWork;
        data['region'] = this.region;
        data['regionDesc'] = this.regionDesc;
        data['regionDescWork'] = this.regionDescWork;
        data['regionWork'] = this.regionWork;
        data['sex'] = this.sex;
        data['workBeginTime'] = this.workBeginTime;
        data['workYearsWork'] = this.workYearsWork;
        if (this.emergencyContactList != null) {
            data['emergencyContactList'] = this.emergencyContactList.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class EmergencyContact {
    String name;
    String phone;
    String relation;

    EmergencyContact({this.name, this.phone, this.relation});

    factory EmergencyContact.fromJson(Map<String, dynamic> json) {
        return EmergencyContact(
            name: json['name'],
            phone: json['phone'],
            relation: json['relation'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['name'] = this.name;
        data['phone'] = this.phone;
        data['relation'] = this.relation;
        return data;
    }
}