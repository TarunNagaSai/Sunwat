import 'package:get/instance_manager.dart';
import 'package:sunwat/controllers/report_controller.dart';

class ReportBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ReportController>(
      ReportController(),
    );
  }
}
