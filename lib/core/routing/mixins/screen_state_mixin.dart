import 'package:flutter/cupertino.dart';

mixin ScreenStateMixin<T extends StatefulWidget> on State<T> {
  bool loading = false;

  void setLoading(bool value) {
    setState(() {
      loading = value;
    });
  }

  @override
  void setState(VoidCallback fn) {
    if (!mounted) {
      return;
    }

    super.setState(fn);
  }

  Future<void> loadData() async {}

  @override
  void initState() {
    Future(() async {
      setLoading(true);
      await loadData();
      setLoading(false);
    });

    super.initState();
  }
}
