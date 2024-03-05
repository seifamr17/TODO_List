class Task {
  final String _title;
  bool _isDone;

  Task({String title, bool isDone = false})
      : _title = title,
        _isDone = isDone;

  String getTitle() => _title;
  bool getIsDone() => _isDone;

  void toggleDone() {
    this._isDone = !this._isDone;
  }
}
