import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sunwat/UI/widgets/report_tile.dart';
import 'package:sunwat/controllers/report_controller.dart';
import 'package:sunwat/core/theme.dart';

class RoPlantReportScreen extends StatefulWidget {
  const RoPlantReportScreen({super.key});

  @override
  State<RoPlantReportScreen> createState() => _RoPlantReportScreenState();
}

class _RoPlantReportScreenState extends State<RoPlantReportScreen> {
  final GlobalKey<FormState> planReportFormKey = GlobalKey<FormState>();
  TextEditingController plantName = TextEditingController();
  TextEditingController plantAddress = TextEditingController();
  TextEditingController pointsToVerify = TextEditingController();
  TextEditingController plantRemark = TextEditingController();
  TextEditingController plantPhotos = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RO Plant Report",
        ),
      ),
      body: Container(
        decoration: AppThemes.decoration,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Form(
              key: planReportFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: plantName,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "Please select RO Plant Name",
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {}),
                        child: const Icon(
                          Icons.search,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: plantAddress,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Plant Address",
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: pointsToVerify,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "POINTS TO VERIFY",
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  GetBuilder<ReportController>(
                    builder: (reportData) {
                      return ListView.separated(
                        shrinkWrap: true,
                        primary: false,
                        itemBuilder: ((context, index) {
                          return ReportSatisfiedTile(
                            report: reportData.reportTiles[index],
                            tileIndex: index,
                          );
                        }),
                        separatorBuilder: ((context, index) => const SizedBox(
                              height: 8,
                            )),
                        itemCount: reportData.reportTiles.length,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: plantRemark,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Remark",
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Plant Photos",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: .5,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "We hearby certify that the Ro Plant Report taken by M/s. Escro Engineer Service on dated 08/12/2022.",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Customer Signature",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Clear Signature",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "I confirm that the Ro Plant Reports have been taken on dated 08/12/2022",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Customer Signature",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Clear Signature",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "SUBMIT",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "CANCLE",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
