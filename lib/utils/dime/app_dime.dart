class AppDime {
  static double base = 2;

  static double xs = base; // 2.0

  static double sm = xs * base; // 4.0

  static double md = sm * base; // 8.0

  static double lg = md * base; // 16.0

  static double xlg = lg * base; // 32.0

  static double xxlg = xlg * base; // 64.0

  static double onehandre1 = (xlg * base) * one_41; // 90
  static double onehandre = (xlg * base) * one_6; // 102.4

  static double xxxlg = xxlg * base; // 128.0

  static double one_41 = 1.41;
  static double one_6 = 1.6;
}
