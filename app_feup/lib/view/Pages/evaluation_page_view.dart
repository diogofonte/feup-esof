import 'package:flutter/material.dart';
import 'package:uni/view/Pages/certificates_initial_page_view.dart';
import 'package:uni/view/Pages/no_results_certificates_page.dart';
import 'admission_data_access_page_view.dart';
import 'general_page_view.dart';
import 'package:uni/view/Pages/statutes_and_regimes_page_view.dart';
import 'package:uni/view/Pages/improvement_exam_enrollment_page_view.dart';
import 'package:uni/view/Pages/study_plan_page_view.dart';
import 'academic_pathway_access.dart';
import 'not_implemented_page_view.dart';
import 'package:uni/utils/evaluation_page_constants.dart' as EvalConstants;

class EvaluationPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EvaluationPageViewState();
}

Widget requestSuccessful(context) {
  Widget result = NotImplementedPageView();

  bool canOpen = true; //stub

  if (!canOpen) {
    result = noResultsPage();
  }

  return result;
}

class EvaluationPageViewState extends GeneralPageViewState {

  Container menuButton(double marginLeft, double marginTop, double marginRight,
      double marginBottom, String buttonText, StatefulWidget destinationPage) {
    return Container(
      margin: EdgeInsets.fromLTRB(marginLeft, marginTop,
          marginRight, marginBottom),
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:
              (context) => destinationPage));
        },
        child: Text(buttonText),
      ),
    );
  }

  @override
  Widget getBody(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final containerMarginBottom = mediaQueryData.size.height*0.30,
        containerMarginTop = mediaQueryData.size.height*0.015,
        evaluationTitleMarginBottom = mediaQueryData.size.height*0.005;

    return Container(
        height: mediaQueryData.size.height,
        width: mediaQueryData.size.width,
        margin: EdgeInsets.fromLTRB(0, containerMarginTop,
             0, containerMarginBottom),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0,
                    evaluationTitleMarginBottom),
                child: Text(EvalConstants.evaluation,
                    style: Theme.of(context).textTheme.headline6.
                    apply(fontSizeDelta: 7))
            ),
            menuButton(0, 0, 0, 0,
                EvalConstants.academicPathway,
                AcademicPathwayPage()),
            menuButton(0, 0, 0, 0,
                EvalConstants.studyPlanPosition,
                StudyPlanPageView()),
            menuButton(0, 0, 0, 0,
                EvalConstants.statuteAndFrequencyRegimeAccess,
                StatutesAndRegimesPageView()),
            menuButton(0, 0, 0, 0,
                EvalConstants.admissionDataAccess,
                AdmissionDataAccessPageView()),
            menuButton(0, 0, 0, 0,
                EvalConstants.improvementExamEnrollment,
                ImprovementExamEnrollmentPageView()),
            menuButton(0, 0, 0, 0,
                EvalConstants.sigarraCertificateRequest,
                CertificatesInitialPageView())
          ],
        )
    );
  }
}