import 'package:equatable/equatable.dart';

enum Trades { Carpenter, Painter, GL, Plasterer, GW }

class Trade extends Equatable {
  final String text;
  final String imagePath;
  final Trades type;

  // const Trade._(this.imagePath, this.text, this.type);

  const Trade(this.type)
      : imagePath = type == Trades.Carpenter
            ? 'assets/images/carpenter.png'
            : type == Trades.Painter
                ? 'assets/images/painter.png'
                : type == Trades.Plasterer
                    ? 'assets/images/plasterer.png'
                    : type == Trades.GL
                        ? 'assets/images/general_laborer.png'
                        : 'assets/images/general_laborer.png',
        text = type == Trades.Carpenter
            ? 'Carpenter'
            : type == Trades.Painter
                ? 'Painter'
                : type == Trades.Plasterer
                    ? 'Plasterer'
                    : type == Trades.GL
                        ? 'General Laborer'
                        : 'Ground Worker';

  factory Trade.fromJson(Map<String, dynamic> json) {
    switch (json['text']) {
      case 'Carpenter':
        return Trade(Trades.Carpenter);
      case 'Painter':
        return Trade(Trades.Painter);
      case 'Plasterer':
        return Trade(Trades.Plasterer);
      case 'General Laborer':
        return Trade(Trades.GL);
      case 'Ground Worker':
      default:
        return Trade(Trades.GW);
    }
  }

  Map<String, dynamic> toJson() => {'text': text};

  static List<Trade> get allTrades => [
        Trade(Trades.Carpenter),
        Trade(Trades.Painter),
        Trade(Trades.Plasterer),
        Trade(Trades.GL),
        Trade(Trades.GW),
      ];

  @override
  List<Object> get props => [
        type,
        text,
        imagePath,
      ];
}
