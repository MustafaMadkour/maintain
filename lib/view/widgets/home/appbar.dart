import 'package:flutter/material.dart';
import 'package:maintain/core/constants/app_color.dart';

class HomeAppBar extends StatelessWidget {
  final String hint;
  final void Function()? onpressed;
  final void Function()? onSearch;
  const HomeAppBar(
      {super.key, this.onpressed, required this.hint, this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 40,
              child: TextFormField(
                style: const TextStyle(
                  color: AppColor.secondaryColor,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: AppColor.primaryColor),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: true,
                  fillColor: AppColor.white,
                  prefixIcon: IconButton(
                      onPressed: onSearch,
                      icon: const Icon(
                        Icons.search,
                        size: 20,
                        color: AppColor.primaryColor,
                      )),
                  prefixIconColor: MaterialStateColor.resolveWith(
                    (states) => states.contains(MaterialState.focused)
                        ? const Color(0xFFFF5722)
                        : const Color(0xff0061a4),
                  ),
                  hintText: hint,
                  hintStyle: const TextStyle(
                    color: AppColor.secondaryColor,
                    fontSize: 14,
                  ),
                ),
                // autofocus: true,
                showCursor: false,
              ),
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                // color: AppColor.secondaryColor,
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
              alignment: Alignment.center,
              onPressed: onpressed,
              icon: const Icon(
                Icons.notifications_outlined,
                size: 25,
              ),
              color: AppColor.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
