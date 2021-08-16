import 'dart:async';

Timer? _debounce;

debouncedCallBack(int time, Function() callBack) {
  if (_debounce?.isActive ?? false) _debounce!.cancel();
  _debounce = Timer(Duration(milliseconds: time), callBack);
}
