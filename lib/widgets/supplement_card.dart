import 'package:flutter/material.dart';
import 'package:tw_core/models/supplement/supplement_model.dart';

class SupplementCard extends StatelessWidget {
  final Supplement supplement;
  const SupplementCard({
    Key? key,
    required this.supplement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(supplement.trade.imagePath),
          backgroundColor: Colors.transparent,
        ),
        title: Text(supplement.title),
        trailing: Text('Supplement'),
      ),
    );
  }
}
