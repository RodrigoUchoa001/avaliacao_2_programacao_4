String getNameOfIntMonth(int month) {
  switch (month) {
    case 1:
      return 'January';
    case 2:
      return 'February';
    case 3:
      return 'March';
    case 4:
      return 'April';
    case 5:
      return 'May';
    case 6:
      return 'June';
    case 7:
      return 'July';
    case 8:
      return 'August';
    case 9:
      return 'September';
    case 10:
      return 'October';
    case 11:
      return 'November';
    case 12:
      return 'December';
    default:
      return 'WTF';
  }
}

String getNameOfDayOfTheWeek(int month) {
  switch (month) {
    case 1:
      return 'Monday';
    case 2:
      return 'Tuesday';
    case 3:
      return 'Wednesday';
    case 4:
      return 'Thursday';
    case 5:
      return 'Friday';
    case 6:
      return 'Saturday';
    case 7:
      return 'Sunday';
    default:
      return 'WTF';
  }
}

String getNameOfDayOfTheWeekThreeChar(String month) {
  String threeCharMonth = '';

  for (var i = 0; i < 3; i++) {
    threeCharMonth += month[i];
  }

  return threeCharMonth.toUpperCase();
}
