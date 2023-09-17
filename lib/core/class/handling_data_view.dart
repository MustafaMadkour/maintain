import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:maintain/core/class/status_request.dart';
import 'package:maintain/core/constants/image_assets.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ?  Center(child: Lottie.asset(ImageAsset.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(child: Lottie.asset(ImageAsset.offline, width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(child: Lottie.asset(ImageAsset.server, width: 250, height: 250))
                : statusRequest == StatusRequest.failure
                    ? Center(child: Lottie.asset(ImageAsset.noData, width: 250, height: 250, repeat: true))
                    : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(ImageAsset.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Lottie.asset(ImageAsset.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(ImageAsset.server,
                        width: 250, height: 250))
                : widget;
  }
}