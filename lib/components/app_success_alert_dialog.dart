import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppSuccessAlertDialog extends StatefulWidget {
  final String title;

  const AppSuccessAlertDialog({
    super.key,
    required this.title,
  });

  @override
  State<AppSuccessAlertDialog> createState() =>
      _CustomSuccessAlertDialogState();
}

class _CustomSuccessAlertDialogState extends State<AppSuccessAlertDialog> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void showConfetti() {
    _confettiController.play();
  }

  @override
  Widget build(BuildContext context) {
    showConfetti();
    return AlertDialog(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      titlePadding: EdgeInsets.zero,
      title: Align(
        alignment: Alignment.topLeft,
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.close,
          ),
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.all(44.0),
        child: SizedBox(
          height: 120,
          width: 250,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality.explosive,
                shouldLoop: false,
                colors: [
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                  Colors.yellow,
                  Colors.orange
                ],
              ),
              Text(
                widget.title,
                style: AppTextStyles.style20W400(context),
              ),
              Container(
                width: 48,
                height: 48,
                margin: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.greenWhite,
                ),
                child: Icon(
                  Icons.check,
                  color: AppColors.white,
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
