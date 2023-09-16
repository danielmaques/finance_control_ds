import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FinanceSpendingTile extends StatelessWidget {
  const FinanceSpendingTile({
    super.key,
    required this.spending,
    required this.onTap,
  });

  final double spending;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => onTap(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FinanceText.p16('Gastos'),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: Colors.grey[500],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FinanceText.p18(
                          'Gastos',
                          color: Colors.black,
                        ),
                        const SizedBox(height: 4),
                        FinanceText.p16(
                          '${DateFormat('dd MMM yyyy').format(DateTime(DateTime.now().year, DateTime.now().month, 1))} - ${DateFormat('dd MMM yyyy').format(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day))}',
                          color: AppColors.slateGray,
                        ),
                        const SizedBox(height: 8),
                        FinanceText.h3(
                          formatMoney(spending),
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  const PieChartSample2(),
                ],
              ),
              SizedBox(
                height: 20,
                child: Divider(
                  height: 1,
                  color: Colors.blueGrey[100],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(11, (index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.amber,
                      ),
                      child: const Text('data'),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<PieChartSample2> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 79,
      width: 79,
      child: AspectRatio(
        aspectRatio: 2.3,
        child: PieChart(
          PieChartData(
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 1,
            centerSpaceRadius: 20,
            startDegreeOffset: 3,
            sections: showingSections(),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final radius = isTouched ? 20.0 : 18.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.amber,
            value: 10,
            radius: radius,
            title: '',
          );
        case 1:
          return PieChartSectionData(
            color: Colors.blueAccent,
            value: 3,
            radius: radius,
            title: '',
          );
        case 2:
          return PieChartSectionData(
            color: Colors.green,
            value: 10,
            title: '',
            radius: radius,
          );
        case 3:
          return PieChartSectionData(
            color: Colors.red,
            value: 10,
            title: '',
            radius: radius,
          );
        case 4:
          return PieChartSectionData(
            color: Colors.red,
            value: 10,
            title: '',
            radius: radius,
          );
        case 5:
          return PieChartSectionData(
            color: Colors.red,
            value: 10,
            title: '',
            radius: radius,
          );
        case 6:
          return PieChartSectionData(
            color: Colors.red,
            value: 10,
            title: '',
            radius: radius,
          );
        case 7:
          return PieChartSectionData(
            color: Colors.red,
            value: 10,
            title: '',
            radius: radius,
          );
        case 8:
          return PieChartSectionData(
            color: Colors.red,
            value: 10,
            title: '',
            radius: radius,
          );
        case 9:
          return PieChartSectionData(
            color: Colors.red,
            value: 10,
            title: '',
            radius: radius,
          );
        case 10:
          return PieChartSectionData(
            color: Colors.red,
            value: 10,
            title: '',
            radius: radius,
          );
        case 11:
          return PieChartSectionData(
            color: Colors.red,
            value: 10,
            title: '',
            radius: radius,
          );
        default:
          return PieChartSectionData(); // retorno padrão, pode ajustar como preferir
      }
    });
  }
}
