import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

class ScreenTime extends StatelessWidget {
  const ScreenTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Theme.of(context).colorScheme.primary, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 125,
            height: 125,
            child: Stack(
              children: [
                const ScreenTimePieChart(),
                Positioned(left: 43, top: 30, child: Text('00', style: Theme.of(context).textTheme.headlineLarge)),
                Positioned(left: 35, top: 65,child: Text('hrs left', style: Theme.of(context).textTheme.titleMedium))
              ],
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () => {},
                style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFF443dff)), foregroundColor: WidgetStatePropertyAll(Color(0xFFffffff))),
                child: const Row(children: [Icon(Icons.add), SizedBox(width: 8), Text('Add Screen Time')]),
              ),
              ElevatedButton(
                onPressed: () => {},
                style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFF443dff)), foregroundColor: WidgetStatePropertyAll(Color(0xFFffffff))),
                child: const Row(children: [Icon(Icons.edit), SizedBox(width: 8), Text('Edit Screen Time')]),
              )
            ],
          )
        ],
      )
    );
  }
}

class ScreenTimePieChart extends StatelessWidget {
  const ScreenTimePieChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 270 * pi/180,
      child: PieChart(
        swapAnimationDuration: const Duration(milliseconds: 150),
        swapAnimationCurve: Curves.linear,
        PieChartData(
          pieTouchData: PieTouchData(enabled: false),
          borderData: FlBorderData(show: false),
          sectionsSpace: 0,
          centerSpaceRadius: 42,
          sections: [
            PieChartSectionData(value: 40, radius: 10, title: '', color: Theme.of(context).colorScheme.tertiary),
            PieChartSectionData(value: 60, radius: 10, title: '', color: Theme.of(context).colorScheme.secondary)
          ]
        )
      )
    );
  }
}