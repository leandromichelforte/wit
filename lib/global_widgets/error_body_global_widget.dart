import 'package:flutter/material.dart';

class ErrorBodyGlobalWidget extends StatelessWidget {
  const ErrorBodyGlobalWidget(
      {Key? key, required Function() onTapBtn, required int? statusCode})
      : _onTapBtn = onTapBtn,
        _statusCode = statusCode,
        super(key: key);

  final Function() _onTapBtn;
  final int? _statusCode;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
              text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                const TextSpan(text: 'An error'),
                if (_statusCode != null) TextSpan(text: '($_statusCode)'),
                const TextSpan(text: ' has ocurred.')
              ])),
          ElevatedButton.icon(
              onPressed: _onTapBtn,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Tap here to reload the page'))
        ],
      ),
    );
  }
}
