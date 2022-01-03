class MailTitle {
  String _title;

  MailTitle(this._title);

  String getImportantTitle() {
    return '【重要】' + _title;
  }
}
