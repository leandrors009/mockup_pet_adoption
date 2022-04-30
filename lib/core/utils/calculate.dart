/// Above 30 days consider a month
/// Above 365 days consider a year
///
/// ```dart
/// Calculate.petAge(currentDate, birthDate);
/// ```
///
/// example return:
/// * 1,8 years old

class Calculate {
  static String petAge(DateTime currentDate, DateTime birthDate) {
    final agePet = currentDate.difference(birthDate);
    //Dias
    final daysElapsed = agePet.inDays;

    // Anos
    int years = 0;
    int months = 0;
    int days = 0;
    // 2.6 years old
    // 6 months old
    // 20 days old

    // dividir a quantidade total de dias por 365 e pegar apenas o inteiro
    years = (daysElapsed / 365).truncate();
    months = ((daysElapsed - (years * 365)) / 30).truncate();
    days = (daysElapsed - ((years * 365) + (months * 30)));

    late String yearsReturn;
    if (years > 0) {
      if (daysElapsed % 365 > 0) {
        yearsReturn = '$years,$months years old';
      }
    } else if (daysElapsed < 365 && daysElapsed > 30) {
      yearsReturn = '$months months old';
    } else if (daysElapsed < 30) {
      yearsReturn = '$days days old';
    } else {
      yearsReturn = 'invalid date';
    }

    return yearsReturn;
  }
}
