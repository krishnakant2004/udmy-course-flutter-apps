class Items {
  String itemname;
  String date;
  double paymoney;

  Items({
    required this.itemname,
    required this.paymoney,
    String? date,
  }) :date = date ?? DateTime.now().toString();
}
