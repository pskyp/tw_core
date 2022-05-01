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
        leading:Image(image: AssetImage(supplement.trade.imagePath)),
         
       
        title: Text(supplement.title),
        trailing: Text('Supplement'),
      ),
    );
  }
}
