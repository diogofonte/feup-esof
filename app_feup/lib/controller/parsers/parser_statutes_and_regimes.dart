class SchoolYearStub {
    String getYear() {
        return '2021/2022';
    }
}

class StatuteStub {
    String getStatuteName(String schoolYear) {
        return 'Ordinário';
    }

    String getStartDate(String schoolYear) {
        return '2021-10-13';
    }

    String getEndDate(String schoolYear) {
        return '2022-11-30';
    }

    bool getAutomaticRenewal(String schoolYear) {
        return false;
    }

    bool getAnualStatute(String schoolYear) {
        return true;
    }

    bool get1stSemStatute(String schoolYear) {
        return true;
    }

    bool get2ndSemStatute(String schoolYear) {
        return true;
    }
}

class FrequencyRegimeStub {
    String getDedication(String schoolYear) {
        return 'Tempo integral';
    }

    String getPresence(String schoolYear) {
        return 'Presencial';
    }

    String getSchedule(String schoolYear) {
        return 'Diurno';
    }
}