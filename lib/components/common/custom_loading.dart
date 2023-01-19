import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmartLoading extends StatefulWidget {
  String msg = '加载中';
  SmartLoading({required this.msg, super.key});

  @override
  State<SmartLoading> createState() => _SmartLoadingState();
}

class _SmartLoadingState extends State<SmartLoading> {
  @override
  Widget build(BuildContext context) {
    // return const CircularProgressIndicator(
    //   strokeWidth: 3,
    // );
    return Container(
      width: 120,
      height: 120,
      padding: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: Theme.of(context).dialogBackgroundColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircularProgressIndicator(
            strokeWidth: 3,
          ),
          const SizedBox(height: 15),
          Text(
            '请稍等...',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
