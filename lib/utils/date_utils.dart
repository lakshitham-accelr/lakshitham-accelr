const List months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

String getMonthAndDate() {
  var now = new DateTime.now();
  var currentMon = now.month;
  var currentDate = now.day;

  return "${months[currentMon - 1]}  $currentDate";
}
