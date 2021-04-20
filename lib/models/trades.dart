import 'package:equatable/equatable.dart';

enum Trades { Carpenter, Painter, GL, Plasterer, GW }

class Trade extends Equatable {
  String text;
  String imagePath;
  Trades type;

  Trade._(this.imagePath, this.text, this.type);

  factory Trade.fromTrades(Trades trade) {
    if (trade == Trades.Carpenter) {
      return Trade._(
        'assets/images/carpenter.png',
        'Carpenter',
        Trades.Carpenter,
      );
    } else if (trade == Trades.Painter) {
      return Trade._(
        'assets/images/painter.png',
        'Painter',
        Trades.Painter,
      );
    } else if (trade == Trades.Plasterer) {
      return Trade._(
        'assets/images/plasterer.png',
        'Plasterer',
        Trades.Plasterer,
      );
    } else if (trade == Trades.GL) {
      return Trade._(
        'assets/images/general_laborer.png',
        'General Laborer',
        Trades.GL,
      );
    }
    return Trade._(
      'assets/images/painter.png',
      'Ground Worker',
      Trades.GW,
    );
  }

  factory Trade.fromJson(Map<String, dynamic> json) {
    switch (json['text']) {
      case 'Carpenter':
        return Trade.fromTrades(Trades.Carpenter);
      case 'Painter':
        return Trade.fromTrades(Trades.Painter);
      case 'Plasterer':
        return Trade.fromTrades(Trades.Plasterer);
      case 'General Laborer':
        return Trade.fromTrades(Trades.GL);
      case 'Ground Worker':
        return Trade.fromTrades(Trades.GW);
      default:
        return Trade._(
          'assets/images/manage.png',
          'Not found',
          Trades.GL,
        );
    }
  }

  Map<String, dynamic> toJson() => {'text': text};

  static List<Trade> get allTrades => [
        Trade.fromTrades(Trades.Carpenter),
        Trade.fromTrades(Trades.Painter),
        Trade.fromTrades(Trades.Plasterer),
        Trade.fromTrades(Trades.GL),
        Trade.fromTrades(Trades.GW),
      ];

  @override
  List<Object> get props => [text];
}
