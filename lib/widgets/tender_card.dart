import 'package:flutter/material.dart';
import 'package:tw_core/models/tender/tender_model.dart';

class TenderCard extends StatelessWidget {
  final Tender tender;
  const TenderCard({
    Key? key,
    required this.tender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: Image(
          image: AssetImage(tender.trade.imagePath),
        ),
        title: Text(tender.workIdentifier.title),
        trailing: Text('Tender'),
      ),
    );
  }
}
