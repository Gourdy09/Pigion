import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

import 'package:pigion/theme.dart';

class UsageBreakdown extends StatelessWidget {
  const UsageBreakdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Theme.of(context).colorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: 100,
            height: 100,
            child: UsageBreakdownPieChart(),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(height: 8, width: 8, decoration: BoxDecoration(color: green, borderRadius: BorderRadius.circular(4)),),
                    const SizedBox(width: 4),
                    const Text('Productivity')
                  ],
                ),
                Row(
                  children: [
                    Container(height: 8, width: 8, decoration: BoxDecoration(color: yellow, borderRadius: BorderRadius.circular(4)),),
                    const SizedBox(width: 4),
                    const Text('Lifestyle')
                  ],
                ),
                Row(
                  children: [
                    Container(height: 8, width: 8, decoration: BoxDecoration(color: pink, borderRadius: BorderRadius.circular(4)),),
                    const SizedBox(width: 4),
                    const Text('Entertainment')
                  ],
                ),
              ],
            )
        ],
      )
    );
  }
}

class UsageBreakdownPieChart extends StatelessWidget {
  const UsageBreakdownPieChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: 270 * pi / 180,
        child: PieChart(
          swapAnimationDuration: const Duration(milliseconds: 150),
          swapAnimationCurve: Curves.linear,
          PieChartData(
              pieTouchData: PieTouchData(enabled: false),
              borderData: FlBorderData(show: false),
              sectionsSpace: 0,
              centerSpaceRadius: 30,
              sections: [
                PieChartSectionData(value: 40, radius: 10, title: '', color: pink),
                PieChartSectionData(value: 20, radius: 10, title: '', color: yellow),
                PieChartSectionData(value: 10, radius: 10, title: '', color: green),
                PieChartSectionData(
                    value: 40,
                    radius: 10,
                    title: '',
                    color: Theme.of(context).colorScheme.secondary),
              ]),
        ));
  }
}
