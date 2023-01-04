import 'package:get/get.dart';
import 'package:sunwat/models/entities/form_data.dart';

class ReportController extends GetxController {
  List<SwitchTile> reportTiles = [
    SwitchTile(
      reportType: "Sufficient Raw Water Available",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "Proper Voltage Available",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "RWP Working Properly",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "HPP Working Properly",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "Micron Filters Cleaned/Changed",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "Membrane Washing Not Required",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "No Storages tanks Leakages",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "No Electical Complaints",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "No Pipe Line Leakages",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "Electrical earthing",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "RO Plant Premises hygienis",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "No Drinking Water Taps Leakage",
      typeSatisfied: false,
    ),
    SwitchTile(
      reportType: "General Servicing Done",
      typeSatisfied: false,
    ),
  ];

  void updateReport(int index, bool updatedBool) {
    reportTiles[index].typeSatisfied = updatedBool;
    update();
  }
}
