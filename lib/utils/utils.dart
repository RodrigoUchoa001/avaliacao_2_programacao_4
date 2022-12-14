String getNameOfIntMonth(int month) {
  switch (month) {
    case 1:
      return 'Janeiro';
    case 2:
      return 'Fevereiro';
    case 3:
      return 'Março';
    case 4:
      return 'Abril';
    case 5:
      return 'Maio';
    case 6:
      return 'Junho';
    case 7:
      return 'Julho';
    case 8:
      return 'Agosto';
    case 9:
      return 'Setembro';
    case 10:
      return 'Outubro';
    case 11:
      return 'Novembro';
    case 12:
      return 'Dezembro';
    default:
      return 'WTF';
  }
}

String getNameOfDayOfTheWeek(int month) {
  switch (month) {
    case 1:
      return 'Segunda';
    case 2:
      return 'Terça';
    case 3:
      return 'Quarta';
    case 4:
      return 'Quinta';
    case 5:
      return 'Sexta';
    case 6:
      return 'Sábado';
    case 7:
      return 'Domingo';
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
