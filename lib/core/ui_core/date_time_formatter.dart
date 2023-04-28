class DateTimeFormatter {
  // convert date to string
  // ex: 2021-09-01 -> 9/1/2021
  static String convertDateToString(DateTime date) {
    return "${date.month}/${date.day}/${date.year}";
  }
}
