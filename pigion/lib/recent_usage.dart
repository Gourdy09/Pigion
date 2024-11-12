import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class RecentUsage extends StatelessWidget {
  const RecentUsage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Theme.of(context).colorScheme.primary,
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Container(
          margin: const EdgeInsets.all(24),
          child: BarChart(
            swapAnimationCurve: Curves.linear,
            swapAnimationDuration: const Duration(microseconds: 150),
            BarChartData(
              titlesData: FlTitlesData(
                show: true,
                leftTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: getTitlesBottom,
                    reservedSize: 38,
                  ),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: getTitlesRight,
                    reservedSize: 48,
                    interval: 4, // Adjusted interval for titles on the right
                  ),
                ),
              ),
              barTouchData: BarTouchData(
                enabled: false,
              ),
              borderData: FlBorderData(show: false),
              gridData: FlGridData(
                show: true,
                drawVerticalLine: false,
                getDrawingHorizontalLine: (value) {
                  // Draw horizontal line for all Y-axis values from 0 to maxY
                  return FlLine(
                    color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
                    strokeWidth: 1,
                  );
                },
              ),
              barGroups: [
                BarChartGroupData(
                  x: 0,
                  barRods: [
                    BarChartRodData(color: Theme.of(context).colorScheme.secondary, toY: 4),
                  ],
                ),
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(color: Theme.of(context).colorScheme.secondary, toY: 12),
                  ],
                ),
                BarChartGroupData(
                  x: 2,
                  barRods: [
                    BarChartRodData(color: Theme.of(context).colorScheme.secondary, toY: 4),
                  ],
                ),
                BarChartGroupData(
                  x: 3,
                  barRods: [
                    BarChartRodData(color: Theme.of(context).colorScheme.secondary, toY: 8),
                  ],
                ),
                BarChartGroupData(
                  x: 4,
                  barRods: [
                    BarChartRodData(color: Theme.of(context).colorScheme.secondary, toY: 3),
                  ],
                ),
                BarChartGroupData(
                  x: 5,
                  barRods: [
                    BarChartRodData(color: Theme.of(context).colorScheme.secondary, toY: 8),
                  ],
                ),
                BarChartGroupData(
                  x: 6,
                  barRods: [
                    BarChartRodData(color: Theme.of(context).colorScheme.tertiary, toY: 12),
                  ],
                ),
              ],
              maxY: 24,
              minY: 0,
            ),
          ),
        ),
      ),
    );
  }

  Widget getTitlesBottom(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('M', style: style);
        break;
      case 1:
        text = const Text('T', style: style);
        break;
      case 2:
        text = const Text('W', style: style);
        break;
      case 3:
        text = const Text('Th', style: style);
        break;
      case 4:
        text = const Text('F', style: style);
        break;
      case 5:
        text = const Text('S', style: style);
        break;
      case 6:
        text = const Text('Su', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }

  Widget getTitlesRight(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: Text('${value.toInt()}h', style: style),
    );
  }
}
