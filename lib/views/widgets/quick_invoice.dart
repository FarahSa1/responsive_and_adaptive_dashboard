import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/custom_background_container.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/latest_transaction_section.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/quick_invoice_form.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/quick_invoice_header.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransactionSection(),
          Divider(
            height: 48,
            color: Color(0xfff1f1f1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
