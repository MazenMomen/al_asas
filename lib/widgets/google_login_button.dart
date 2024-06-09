import 'package:flutter/material.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          iconColor: const Color(0xFFFFFFFF),
          minimumSize: Size(
            MediaQuery.of(context).size.width * 127 / 390,
            MediaQuery.of(context).size.height * 35 / 844,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: const Icon(
          Icons.facebook,
          color: Color(0xFF2A3E34),
        ));
  }
}
