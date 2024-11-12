import 'package:flutter/material.dart';

class DoNotDisturb extends StatelessWidget {
  const DoNotDisturb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => { print('Card tapped!') },
          splashColor: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10),
          child: Column(
            children: [
              const Icon(Icons.do_not_disturb_off_outlined, size: 72),
              Text('Do Not Disturb', style: Theme.of(context).textTheme.labelLarge),
              Text('Off', style: Theme.of(context).textTheme.bodyMedium)
            ]
        ),
        ),
      )
      
    );
  }
}