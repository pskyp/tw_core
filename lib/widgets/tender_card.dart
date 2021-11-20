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
    return Card(elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(tender.trade.imagePath),
          backgroundColor: Colors.transparent,
        ),
        title: Text(tender.workIdentifier.title),
        trailing: Text('Tender'),
      ),
    );
  }
}
