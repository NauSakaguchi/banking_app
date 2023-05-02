class CentBalanceFormatter {
  static String toDollarString(int? centBalance) {
    if (centBalance == null) {
      return "\$0.00";
    }
    final double dollarBalance = centBalance / 100;
    return "\$" + dollarBalance.toStringAsFixed(2);
  }
}
