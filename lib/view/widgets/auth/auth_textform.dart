import 'package:flutter/material.dart';
import 'package:maintain/core/constants/app_color.dart';

class AuthTextForm extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData fieldicon;
  final TextEditingController? myController;
  final String? Function(String?) validate;
  final bool isNum;
  final bool? isPass;
  final void Function()? onTapIcon;
  const AuthTextForm(
      {super.key,
      required this.hinttext,
      required this.labeltext,
      required this.fieldicon,
      this.myController,
      required this.validate,
      required this.isNum,
      this.isPass,
      this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: isNum
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.multiline,
      obscureText: isPass == null || isPass == false ? false : true,
      validator: validate,
      controller: myController,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(labeltext),
        ),
        hintText: hinttext,
        hintStyle: const TextStyle(fontSize: 12),
        suffixIcon: InkWell(
          onTap: onTapIcon,
          child: Icon(fieldicon),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      // maxLines: null,

      // minLines: 1,
      // autofocus: true,
    );
  }
}
