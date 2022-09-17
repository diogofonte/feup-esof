import 'package:flutter/material.dart';

class UC {
    String code;
    String initials;
    String ects;
    String grade;
    int stateColor;

    UC(String code, String initials, String ects, String grade,
       String state) {
        this.code = code;
        this.initials = initials;
        this.ects = ects;
        this.grade = grade;
        if(state == "não inscrito"){
            stateColor = 1;
        } else if(state == "inscrito"){
            stateColor = 2;
        } else if(state == "com aprovação" || state == "acerto de plano"){
            stateColor = 3;
        }
    }
}

class SemesterMock {
    List<UC> updateUCs(int year, int semester){
        if(year == 1){
            if(semester == 1){
                return [UC('L.EIC001','ALGA', '4,5', '14', "com aprovação"),
                    UC('L.EIC002','AM I', '6', '16', "com aprovação"),
                    UC('L.EIC004','FSC', '6', '16', "com aprovação"),
                    UC('L.EIC005','MD', '6', '16', "com aprovação"),
                    UC('L.EIC003','FP', '6', '18', "com aprovação")];
            } else if(semester == 2) {
                return [UC('L.EIC007','AM II', '6', '14', "com aprovação"),
                    UC('L.EIC008','F I', '6', '16', "com aprovação"),
                    UC('L.EIC010','TC', '6', '16', "com aprovação"),
                    UC('L.EIC006','AC', '6', '17', "com aprovação"),
                    UC('L.EIC009','P', '6', '18', "com aprovação")];
            }
        } else if(year == 2){
            if(semester == 1){
                return [UC('L.EIC011','AED', '4,5', '14', "com aprovação"),
                    UC('L.EIC012','BD', '6', '13', "com aprovação"),
                    UC('L.EIC013','F II', '6', '10', "com aprovação"),
                    UC('L.EIC014','LDTS', '6', '12', "com aprovação"),
                    UC('L.EIC015','SO', '6', '18', "com aprovação")];
            } else if(semester == 2){
                return [UC('L.EIC018','LC', '4,5', '-', "inscrito"),
                    UC('L.EIC016','DA', '6', '-', "inscrito"),
                    UC('L.EIC017','ES', '6', '-', "inscrito"),
                    UC('L.EIC020','ME', '6', '-', "inscrito"),
                    UC('L.EIC019','LTW', '6', '-', "inscrito")];
            }
        } else if(year == 3){
            if(semester == 1){
                return [UC('L.EIC022','IPC', '4,5', '-', "não inscrito"),
                    UC('L.EIC023','LBAW', '6', '-', "não inscrito"),
                    UC('L.EIC025','RC', '6', '-', "não inscrito"),
                    UC('L.EIC021','FSI', '6', '-', "não inscrito"),
                    UC('L.EIC024','PFL', '6', '-', "não inscrito")];
            } else if(semester == 2) {
                return [UC('L.EIC028','CPD', '4,5', '-', "não inscrito"),
                    UC('L.EIC026','C', '6', '-', "não inscrito"),
                    UC('L.EIC027','CG', '6', '-', "não inscrito"),
                    UC('L.EIC030','PI', '6', '-', "não inscrito"),
                    UC('L.EIC029','IA', '6', '-', "não inscrito")];
            }
        }
        return null;
    }
}