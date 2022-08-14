class MessageList {
  String statutMessage;
  String username, profil_asset, time;
  StatusType statut;
  String textMessage;
  bool haveFile;
  bool isVoice;
  int notif;
  bool isSelected;

  MessageList(
      {this.haveFile = false,
      this.isSelected = false,
      this.isVoice = false,
      required this.notif,
      required this.profil_asset,
      required this.statut,
      required this.statutMessage,
      required this.textMessage,
      required this.time,
      required this.username});
}

enum StatusType { RECORD, WRITE, LAST_AGO }
