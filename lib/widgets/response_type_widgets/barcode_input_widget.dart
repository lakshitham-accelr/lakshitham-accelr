import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/utils/debounce_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarcodeInputWidget extends StatefulWidget {
  BarcodeInputWidget({Key? key}) : super(key: key);

  @override
  _BarcodeInputWidgetState createState() => _BarcodeInputWidgetState();
}

class _BarcodeInputWidgetState extends State<BarcodeInputWidget> {
  FocusNode barCodeInputFocusNode = FocusNode();
  final barCodeInputController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    barCodeInputController.dispose();
    barCodeInputFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Palette.primaryColor,
        borderRadius: BorderRadius.circular(ThemeConstants.borderRadius / 1.5),
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        onChanged: (text) {
          debouncedCallBack(500, () => print(text));
        },
        focusNode: barCodeInputFocusNode,
        controller: barCodeInputController,
        style: TextStyle(
          color: Palette.gray_1,
          fontSize: 12.0,
        ),
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Palette.primaryColor,
        decoration: InputDecoration(
          hintText: "Barcode Number",
          hintStyle: TextStyle(
            color: Palette.gray_3,
            fontSize: 12.0,
            fontFamily: ThemeConstants.font,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 20.0,
          ),
          suffixIcon: InkWell(
            onTap: () {
              _scanBarcode();
            },
            child: Icon(
              FontAwesomeIcons.barcode,
              size: 15.0,
              color: Palette.unselectedItem,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ThemeConstants.borderRadius / 1.5),
            borderSide: BorderSide(color: Palette.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ThemeConstants.borderRadius / 1.5),
            borderSide: BorderSide(color: Palette.primaryColor),
          ),
        ),
      ),
    );
  }

  Future<void> _scanBarcode() async {
    try {
      final barcode = await FlutterBarcodeScanner.scanBarcode(
        '#1761FD',
        'Cancel',
        true,
        ScanMode.BARCODE,
      );

      if (!mounted) return;

      setState(() {
        if (barcode != "-1") {
          barCodeInputController.text = barcode;
          barCodeInputController.selection = TextSelection.fromPosition(TextPosition(offset: barCodeInputController.text.length));
        }
      });
    } on PlatformException {
      print('Failed to get platform version.');
    }
  }
}
