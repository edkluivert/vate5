import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_color.dart';




/// Reusable date picker function to get date



Future<String?> selectDate(BuildContext context) async {
  var theme = Theme.of(context);
  DateTime? selectedDate = DateTime.now(); // Initialize with the current date

  final DateTime? picked = await showDatePicker(

      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColor.secondaryColor, // <-- SEE HERE
              onPrimary: Colors.white, // <-- SEE HERE
              onSurface: AppColor.grey, // <-- SEE HERE
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColor.grey, // button text color
              ),
            ),
          ),
          child: child!,
        );
      }

  );

  if (picked != null && picked != selectedDate) {
    // Format the selected date as a string based on the country/locale
    final formattedDate = _formatDate(picked, 'en');
    return formattedDate;
  }

  // Return null if no date is selected
  return null;
}

String _formatDate(DateTime date, String country) {
  if (country == 'de') {
    // German date format: dd.mm.yyyy
    return "${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}";
  } else {
    // Default date format (e.g., English): yyyy-mm-dd
    return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }
}
