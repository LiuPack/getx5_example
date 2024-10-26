class AppRoutes {
  AppRoutes._();

  static const home = _Paths.home;
  static const task = _Paths.home + _Paths.task;
  static const user = _Paths.home + _Paths.user;
  static const advanced = _Paths.home + _Paths.advanced;
}

class _Paths {
  _Paths._();

  static const home = '/home';
  static const task = '/task';
  static const advanced = '/advanced';
  static const user = '/user';
}
