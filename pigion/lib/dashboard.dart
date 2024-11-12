import 'package:flutter/material.dart';
import 'package:pigion/recent_usage.dart';
import 'package:pigion/usage_breakdown.dart';
import 'package:pigion/do_not_disturb.dart';
import 'package:pigion/most_used_apps.dart';
import 'package:pigion/screen_time.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          RecentUsage(),
          UsageBreakdown(),
                
          Row(
            children: [
              DoNotDisturb(),
              MostUsedApps()   
            ],
          ),
          ScreenTime(),
        ],
      ),
    );
  }
}



