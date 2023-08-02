import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const CustomDialogWidget(),
            );
          },
          child: const Text('custom pop up'),
        ),
      ),
    );
  }
}

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          const CardDialog(),
          Positioned(
            top: 0,
            right: 0,
            height: 28,
            width: 28,
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(8),
                shape: const CircleBorder(),
                backgroundColor: const Color(0xffEC5B5B),
              ),
              child: Image.asset(
                'assets/icons/icon_close.png',
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardDialog extends StatelessWidget {
  const CardDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xff2A303E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/icons/icon_alert.png',
            width: 72,
          ),
          // const Icon(
          //     Icons.warning,
          //     color: Colors.red,
          //     size: 72,
          //   ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Alert',
            style: GoogleFonts.montserrat(
              fontSize: 24,
              color: const Color(0xffEC5B5B),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Subscribe to this channel for more video like this :)',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
