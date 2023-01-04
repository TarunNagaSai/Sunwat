import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:sunwat/controllers/report_controller.dart';
import 'package:sunwat/models/entities/form_data.dart';

class ReportSatisfiedTile extends StatelessWidget {
  const ReportSatisfiedTile({
    super.key,
    required this.report,
    required this.tileIndex,
  });

  final SwitchTile report;
  final int tileIndex;

  static ReportController get reportData => Get.find();
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: ListTile(
        // contentPadding: EdgeInsets.zero,
        onTap: () {
          reportData.updateReport(
            tileIndex,
            !report.typeSatisfied,
          );
        },
        title: Text(
          report.reportType,
        ),
        trailing: Container(
          height: 24,
          width: 40,
          decoration: BoxDecoration(
            color: report.typeSatisfied ? Colors.green : Colors.red,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: Center(
            child: report.typeSatisfied
                ? const Text(
                    "Yes",
                  )
                : const Text(
                    "No",
                  ),
          ),
        ),
      ),
    );
  }
}
