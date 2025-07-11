import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';
import 'package:unicons/unicons.dart';

class TextFormFieldInput extends StatefulWidget {
  const TextFormFieldInput({
    super.key,
    required this.hintText,
    required this.controller,
    this.inputFormatters,
    this.keyboardType,
    this.isPassword = false,
  });

  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool isPassword;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<TextFormFieldInput> createState() => _TextFormFieldInputState();
}

class _TextFormFieldInputState extends State<TextFormFieldInput> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radiusS),
        border: Border.all(color: AppColors.lightGrey),
        color: AppColors.lightGrey,
      ),
      child: TextFormField(
        onTapOutside: (_) => FocusScope.of(context).unfocus(),
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: _obscureText,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: GoogleFonts.montserrat(),
          suffix:
              widget.isPassword
                  ? IconButton(
                    onPressed: () {
                      setState(() => _obscureText = !_obscureText);
                    },
                    icon: Icon(
                      _obscureText ? UniconsLine.eye_slash : UniconsLine.eye,
                    ),
                  )
                  : null,
        ),
        style: GoogleFonts.montserrat(color: AppColors.text),
        cursorColor: AppColors.text,
      ),
    );
  }
}
