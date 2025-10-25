import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(this.text, this.hi, this.wid, this.callBack,{super.key});
  String text;
  double wid;
  double hi;
  void callBack;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>callBack,
      child: Container(
        height: hi,
        width: wid,
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue,
          // border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text(text)),
      ),
    );
  }
}
