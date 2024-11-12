import 'package:flutter/material.dart';

class MostUsedApps extends StatelessWidget {
  const MostUsedApps({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Theme.of(context).colorScheme.primary, 
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.indeterminate_check_box_outlined, size: 36),
                    Text('App Name 1')
                  ],
                ),
                SizedBox(width: 35,),
                Column(
                  children: [
                    Icon(Icons.indeterminate_check_box_outlined, size: 36),
                    Text('App Name 2')
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.indeterminate_check_box_outlined, size: 36),
                    Text('App Name 3')
                  ],
                ),
                SizedBox(width: 35,),
                Column(
                  children: [
                    Icon(Icons.indeterminate_check_box_outlined, size: 36),
                    Text('App Name 4')
                  ],
                )
              ],
            )
          ],
        ),
      )
      );
  }
}