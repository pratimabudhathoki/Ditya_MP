import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    super.key,
    required TextEditingController controller,
    required String label,
    bool obscure = false,
  })  : _controller = controller,
        _label = label,
        _obscure = obscure;

  final TextEditingController _controller;
  final String _label;
  final bool _obscure;

  @override
  Widget build(BuildContext context) {
    final inputDecorationTheme = Theme.of(context).inputDecorationTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(_label),
        TextFormField(
          controller: _controller,
          obscureText: _obscure,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            isDense: true,
            border: inputDecorationTheme.border,
            focusedBorder: inputDecorationTheme.focusedBorder,
            enabledBorder: inputDecorationTheme.enabledBorder,
            errorBorder: inputDecorationTheme.errorBorder,
          ),
        ),
      ],
    );
  }
}
