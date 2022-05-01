import 'package:equatable/equatable.dart';

enum Trades {
  Carpenter,
  Painter,
  GL,
  Plasterer,
  GW,
  Electical,
  Roofwork,
  Bricklayer,
  Scaffolder,
  WF,
  CT,
  KF,
  MF,
  IF,
  Fencing,
  DL,
  Landscaping,
  TM,
  MOO,
  SF,
  SC,
  ADT,
  TEO,
  Telehandler,
  IC,
  Other
}

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
                    : type == Trades.MF
                        ? 'assets/images/mastic2.png'
                        : type == Trades.Electical
                            ? 'assets/images/electrician.png'
                            : type == Trades.ADT
                                ? 'assets/images/adt.png'
                                : type == Trades.Bricklayer
                                    ? 'assets/images/briklayer.png'
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
                        : type == Trades.GW
                            ? 'Ground Worker'
                            : type == Trades.Electical
                                ? 'Electrical'
                                : type == Trades.Roofwork
                                    ? 'Roofwork'
                                    : type == Trades.Bricklayer
                                        ? 'Bricklayer'
                                        : type == Trades.Scaffolder
                                            ? 'Scaffolder'
                                            : type == Trades.WF
                                                ? 'Window Fitting'
                                                : type == Trades.CT
                                                    ? 'Ceramic Tiling'
                                                    : type == Trades.KF
                                                        ? 'Kitchen Fitting'
                                                        : type == Trades.MF
                                                            ? 'Mastic Fitting'
                                                            : type == Trades.IF
                                                                ? 'Insulation Fitting'
                                                                : type ==
                                                                        Trades
                                                                            .Fencing
                                                                    ? 'Fencing'
                                                                    : type ==
                                                                            Trades
                                                                                .DL
                                                                        ? 'Dry Lining'
                                                                        : type ==
                                                                                Trades.Landscaping
                                                                            ? 'Landscraping'
                                                                            : type == Trades.TM
                                                                                ? 'Trafic Marshal'
                                                                                : type == Trades.MOO
                                                                                    ? 'Machine Operator Other'
                                                                                    : type == Trades.SF
                                                                                        ? 'Steel Fixers'
                                                                                        : type == Trades.SC
                                                                                            ? 'Shutter Carpenters'
                                                                                            : type == Trades.ADT
                                                                                                ? 'ADT'
                                                                                                : type == Trades.TEO
                                                                                                    ? '360 Excavator Operator'
                                                                                                    : type == Trades.Telehandler
                                                                                                        ? 'Tele-Handler'
                                                                                                        : type == Trades.IC
                                                                                                            ? 'Industrial Cleaner'
                                                                                                            : type == Trades.Other
                                                                                                                ? 'Other'
                                                                                                                : 'Other';

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
        return Trade(Trades.GW);
      case 'Electrical':
        return Trade(Trades.Electical);
      case 'Roofwork':
        return Trade(Trades.Roofwork);
      case 'Bricklayer':
        return Trade(Trades.Bricklayer);
      case 'Scaffolder':
        return Trade(Trades.Scaffolder);
      case 'Window Fitting':
        return Trade(Trades.WF);
      case 'Ceramic Tiling':
        return Trade(Trades.CT);
      case 'Kitchen Fitting':
        return Trade(Trades.KF);
      case 'Mastic Fitting':
        return Trade(Trades.MF);
      case 'Insulation Fitting':
        return Trade(Trades.IF);
      case 'Fencing':
        return Trade(Trades.Fencing);
      case 'Dry Lining':
        return Trade(Trades.DL);
      case 'Landscraping':
        return Trade(Trades.Landscaping);
      case 'Trafic Marshal':
        return Trade(Trades.TM);
      case 'Machine Operator Other':
        return Trade(Trades.MOO);
      case 'Steel Fixers':
        return Trade(Trades.SF);
      case 'Shutter Carpenters':
        return Trade(Trades.SC);
      case 'ADT':
        return Trade(Trades.ADT);
      case '360 Excavator Operator':
        return Trade(Trades.TEO);
      case 'Tele-Handler':
        return Trade(Trades.Telehandler);
      case 'Industrial Cleaner':
        return Trade(Trades.IC);
      default:
        return Trade(Trades.Other);
    }
  }

  Map<String, dynamic> toJson() => {'text': text};

  static List<Trade> get allTrades => [
        Trade(Trades.Carpenter),
        Trade(Trades.Painter),
        Trade(Trades.Plasterer),
        Trade(Trades.ADT),
        Trade(Trades.Bricklayer),
        Trade(Trades.CT),
        Trade(Trades.DL),
        Trade(Trades.Electical),
        Trade(Trades.Fencing),
        Trade(Trades.GL),
        Trade(Trades.GW),
        Trade(Trades.IC),
        Trade(Trades.IF),
        Trade(Trades.KF),
        Trade(Trades.Landscaping),
        Trade(Trades.MF),
        Trade(Trades.MOO),
        Trade(Trades.Other),
        Trade(Trades.Roofwork),
        Trade(Trades.SC),
        Trade(Trades.SF),
        Trade(Trades.Scaffolder),
        Trade(Trades.TEO),
        Trade(Trades.TM),
        Trade(Trades.Telehandler),
        Trade(Trades.WF),
      ];

  @override
  List<Object> get props => [
        type,
        text,
        imagePath,
      ];
}
