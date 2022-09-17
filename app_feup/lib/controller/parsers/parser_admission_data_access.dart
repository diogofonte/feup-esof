class Student {
  String name;
  String number;
  String email;
  AdmissionData admissionData;

  Student(String name, String number, String email,
          String phase, String applyAverage, String highSchoolAverage,
          String highSchool, String qualifications, String initialYear,
          String firstOption){
    this.name = name;
    this.number = number;
    this.email = email;
    admissionData = AdmissionData(phase, applyAverage, highSchoolAverage, highSchool,
                                  qualifications, initialYear, firstOption);
  }
}

class AdmissionData {
  String phase;
  String applyAverage;
  String highSchoolAverage;
  String highSchool;
  String qualifications;
  String initialYear;
  String firstOption;

  AdmissionData(String phase, String applyAverage, String highSchoolAverage,
                String highSchool, String qualifications, String initialYear,
                String firstOption){
    this.phase = phase;
    this.applyAverage = applyAverage;
    this.highSchoolAverage = highSchoolAverage;
    this.highSchool = highSchool;
    this.qualifications = qualifications;
    this.initialYear = initialYear;
    this.firstOption = firstOption;
  }
}