import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FinanceSpendingTile extends StatelessWidget {
  FinanceSpendingTile({
    Key? key,
    required this.spending,
    required this.onTap,
    required this.categoryPercentages,
  }) : super(key: key);

  final double spending;
  final Function onTap;
  final Map<String, double> categoryPercentages;

  final List<Color> categoryColors = [
    Colors.red,
    Colors.amber,
    Colors.green,
    Colors.grey,
    Colors.pink,
    Colors.purple,
    Colors.tealAccent,
    Colors.amberAccent,
    Colors.blue,
    Colors.brown,
  ];

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
        Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FinanceText.p18('Gastos', color: Colors.black),
                          const SizedBox(height: 4),
                          FinanceText.p16(
                            '${DateFormat('dd MMM yyyy').format(DateTime(DateTime.now().year, DateTime.now().month, 1))} - ${DateFormat('dd MMM yyyy').format(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day))}',
                            color: AppColors.slateGray,
                          ),
                          const SizedBox(height: 8),
                          FinanceText.h3(formatMoney(spending),
                              color: Colors.black),
                        ],
                      ),
                    ),
                    PieChartSample2(
                      categoryPercentages: categoryPercentages,
                      categoryColors: categoryColors,
                    ),
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
                    children: categoryPercentages.entries.map((entry) {
                      String categoryName = entry.key;
                      double percentage = entry.value;
                      Color categoryColor = categoryColors[categoryPercentages
                          .keys
                          .toList()
                          .indexOf(categoryName)];

                      return Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: categoryColor,
                        ),
                        child: Text(
                            '$categoryName: ${percentage.toStringAsFixed(2)}%'),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({
    Key? key,
    required this.categoryPercentages,
    required this.categoryColors,
  }) : super(key: key);

  final Map<String, double> categoryPercentages;
  final List<Color> categoryColors;

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
            borderData: FlBorderData(show: false),
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
    return widget.categoryPercentages.entries.map((entry) {
      String categoryName = entry.key;
      double percentage = entry.value;
      Color categoryColor = widget.categoryColors[
          widget.categoryPercentages.keys.toList().indexOf(categoryName)];

      return PieChartSectionData(
        color: categoryColor,
        value: percentage,
        radius: 20,
        title: '',
      );
    }).toList();
  }
}
