import 'package:flutter/material.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';

class CustomLineChart extends StatefulWidget {
  const CustomLineChart({super.key});

  @override
  State<CustomLineChart> createState() => _CustomLineChartState();
}

class _CustomLineChartState extends State<CustomLineChart> {
  List<Color> gradientColors = [
    const Color(0xff8E7CFD),
    const Color(0xffB866F9),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Padding(
          padding: const EdgeInsets.only(
            right: 18,
            left: 12,
            top: 24,
            bottom: 12,
          ),
          child: LineChart(
            mainData(),
          ),
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style =
        AppStyles.styleMedium10.copyWith(color: const Color(0xffaeaeae));
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text('Feb', style: style);
        break;
      case 3:
        text = Text('MAR', style: style);
        break;
      case 5:
        text = Text('Apr', style: style);
        break;
      case 7:
        text = Text('May', style: style);
        break;
      case 9:
        text = Text('Jun', style: style);
        break;
      case 11:
        text = Text('Jul', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 1:
        text = '0';
        break;
      case 2:
        text = '10,000,000';
        break;
      case 4:
        text = '20,000,000';
        break;
      case 5:
        text = '30,000,000';
        break;
      case 6:
        text = '40,000,000';
        break;
      default:
        return Container();
    }

    return Text(text,
        style: AppStyles.styleMedium10.copyWith(color: const Color(0xffaeaeae)),
        textAlign: TextAlign.right);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        drawHorizontalLine: false,
        verticalInterval: 1.9,
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Color(0xFFF0F0F0),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 55,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: const Border.symmetric(
            vertical: BorderSide(
          color: Color(0xFFF0F0F0),
        )),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2.5),
            FlSpot(4.9, 4),
            FlSpot(6.8, 2.5),
            FlSpot(8, 4),
            FlSpot(9.5, 2.5),
            FlSpot(11, 3),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 4,
          isStrokeCapRound: true,
        ),
      ],
    );
  }
}
