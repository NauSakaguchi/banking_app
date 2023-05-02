class DateTimeFormatter {
  // convert date to string
  // ex: 2021-09-01 -> 9/1/2021
  static String convertDateToString(DateTime? date) {
    if (date == null) {
      return "";
    }
    return "${date.month}/${date.day}/${date.year}";
  }

  // ex: 2021-09-01-10:10 -> 9/1/2021 10:10
  static String convertDateTimeToString(DateTime? date) {
    if (date == null) {
      return "";
    }
    return "${date.month}/${date.day}/${date.year} ${date.hour}:${date.minute}";
  }
}
