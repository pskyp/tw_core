import 'dart:io';

import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:tw_core/models/invoicing/invoice_model.dart';
import 'package:tw_core/services/pdf/pdf_api.dart';
import 'package:tw_core/services/pdf/utils.dart';

Future<ThemeData> getTheme() async {
  var myTheme = ThemeData.withFont(
      base: await PdfGoogleFonts.openSansRegular(),
      bold: await PdfGoogleFonts.openSansBold(),
      icons: await PdfGoogleFonts.materialIcons(),
      italic: await PdfGoogleFonts.openSansItalic());
  return myTheme;
}

class PdfInvoiceApi {
  static Future<File> generate(
      Invoice invoice, String accountNumber, String sortCode) async {
    final pdf = Document();

    final image = MemoryImage(
      (await rootBundle.load('assets/images/tradework_logo.png'))
          .buffer
          .asUint8List(),
    );

    pdf.addPage(MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (context) => [
        buildHeader(invoice, image),
        SizedBox(height: 3 * PdfPageFormat.cm),
        buildTitle(invoice),
        buildInvoice(invoice),
        buildTotal(invoice),
        Divider(),
        SizedBox(height: 1 * PdfPageFormat.cm),
        buildPayment(accountNumber, sortCode),
      ],
      footer: (context) => buildFooter(invoice, image),
    ));

    return PdfApi.saveDocument(
        name: invoice.invoiceReference + '.pdf', pdf: pdf);
  }

  static Widget buildHeader(Invoice invoice, ImageProvider image) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 1 * PdfPageFormat.cm),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // buildSupplierAddress(invoice),
              Container(
                height: 50,
                width: 50,
                child: BarcodeWidget(
                    barcode: Barcode.qrCode(), data: invoice.description),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text('Invoicing via'), Image(image, height: 30)])
            ],
          ),
          SizedBox(height: 1 * PdfPageFormat.cm),
          Row(
            children: [
              Expanded(child: buildCustomerAddress(invoice)),
              Spacer(),
              buildInvoiceInfo(invoice),
            ],
          ),
        ],
      );

  static Widget buildCustomerAddress(Invoice invoice) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(invoice.bidIdentifier.workIdentifier.employer.displayName,
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(invoice
              .bidIdentifier.workIdentifier.employer.location.completeAddress),
        ],
      );

  static Widget buildInvoiceInfo(Invoice invoice) {
    final paymentTerms = invoice.paymentTerm;
    final titles = <String>[
      'Invoice Reference:',
      'Invoice Date:',
      'Payment Terms:',
    ];
    final data = <String>[
      invoice.invoiceReference,
      Utils.formatDate(invoice.invoiceDate),
      paymentTerms.toString() + ' days',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(titles.length, (index) {
        final title = titles[index];
        final value = data[index];

        return buildText(title: title, value: value, width: 200);
      }),
    );
  }

  // static Widget buildSupplierAddress(Invoice invoice) => Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(invoice.bidIdentifier.bidder.displayName,
  //             style: TextStyle(fontWeight: FontWeight.bold)),
  //         if (invoice.companyOrTradingName != null ||
  //             invoice.companyOrTradingName != '')
  //           SizedBox(height: 1 * PdfPageFormat.mm),
  //         if (invoice.companyOrTradingName != null ||
  //             invoice.companyOrTradingName != '')
  //           Text(invoice.companyOrTradingName),
  //         SizedBox(height: 1 * PdfPageFormat.mm),
  //         Text(invoice.invoiceAddress),
  //       ],
  //     );

  static Widget buildTitle(Invoice invoice) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'INVOICE',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 0.8 * PdfPageFormat.cm),
          Text(invoice.description),
          SizedBox(height: 0.8 * PdfPageFormat.cm),
        ],
      );

  static Widget buildInvoice(Invoice invoice) {
    final headers = [
      'Description',
      'Date',
      'Quantity',
      'Unit Price',
      'VAT',
      'Total'
    ];
    final data = invoice.invoiceItems.map((item) {
      final total = item.unitPrice * item.qty * (1 + item.taxRate / 100);

      return [
        item.description,
        // Utils.formatDate(item.date),
        Utils.formatDate(DateTime.now()),
        '${item.qty}',
        '\£ ${item.unitPrice}',
        '${item.taxRate} %',
        '\£ ${total.toStringAsFixed(2)}',
      ];
    }).toList();

    return Table.fromTextArray(
      headers: headers,
      data: data,
      border: null,
      headerStyle: TextStyle(fontWeight: FontWeight.bold),
      headerDecoration: BoxDecoration(color: PdfColors.grey300),
      cellHeight: 30,
      cellAlignments: {
        0: Alignment.centerLeft,
        1: Alignment.centerRight,
        2: Alignment.centerRight,
        3: Alignment.centerRight,
        4: Alignment.centerRight,
        5: Alignment.centerRight,
      },
    );
  }

  static Widget buildTotal(Invoice invoice) {
    final netTotal = invoice.invoiceItems
        .map((item) => item.unitPrice * item.qty)
        .reduce((item1, item2) => item1 + item2);
    final vatPercent = invoice.invoiceItems.first.taxRate / 100;
    final vat = netTotal * vatPercent;
    final total = netTotal + vat;

    return Container(
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          Spacer(flex: 6),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildText(
                  title: 'Net total',
                  value: Utils.formatPrice(netTotal),
                  unite: true,
                ),
                buildText(
                  title: 'Vat ${vatPercent * 100} %',
                  value: Utils.formatPrice(vat),
                  unite: true,
                ),
                Divider(),
                buildText(
                  title: 'Total amount due',
                  titleStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  value: Utils.formatPrice(total),
                  unite: true,
                ),
                SizedBox(height: 2 * PdfPageFormat.mm),
                Container(height: 1, color: PdfColors.grey400),
                SizedBox(height: 0.5 * PdfPageFormat.mm),
                Container(height: 1, color: PdfColors.grey400),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildFooter(Invoice invoice, ImageProvider image) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          //   Column(
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [Text('Invoicing via'), Image(image, height: 30)])
          // ]),
          Divider(),
          SizedBox(height: 2 * PdfPageFormat.mm),
          if (invoice.employeeDetails.isRight())
            Text(invoice.employeeDetails.fold(
                (l) => '',
                (r) =>
                    r.companyName +
                    ' ' +
                    r.companyNumber +
                    '\n' +
                    'Registered Office - ' +
                    r.companyRegisteredAddress.completeAddress)),

          SizedBox(height: 1 * PdfPageFormat.mm),
        ],
      );

  static Widget buildPayment(String accountNumber, String sortCode) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Payment Details',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text('Account: ' + accountNumber),
          SizedBox(height: 1 * PdfPageFormat.mm),
          Text('Sort Code: ' + sortCode),
        ],
      );

  static buildSimpleText({
    String? title,
    String? value,
  }) {
    final style = TextStyle(fontWeight: FontWeight.bold);

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: pw.CrossAxisAlignment.end,
      children: [
        Text(title!, style: style),
        SizedBox(width: 2 * PdfPageFormat.mm),
        Text(value!),
      ],
    );
  }

  static buildText({
    String? title,
    String? value,
    double width = double.infinity,
    TextStyle? titleStyle,
    bool unite = false,
  }) {
    final style = titleStyle ?? TextStyle(fontWeight: FontWeight.bold);

    return Container(
      width: width,
      child: Row(
        children: [
          Expanded(child: Text(title!, style: style)),
          Text(value!, style: unite ? style : null),
        ],
      ),
    );
  }
}
