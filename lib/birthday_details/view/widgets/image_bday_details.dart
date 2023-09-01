import 'package:flutter/material.dart';

import '../../models/birdthday_model.dart';

class ImageBDayDetails extends StatelessWidget {
  const ImageBDayDetails({
    super.key,
    required this.birthday,
  });

  final BirthdayModel birthday;

  @override
  Widget build(BuildContext context) {
    return Image.asset(birthday.imagePath);
  }
}
