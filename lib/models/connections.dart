class Connections {
  String groups;
  String relatives;

  Connections(this.groups, this.relatives);

  Connections.fromJson(Map<String, dynamic> json)
    : groups = json['group-affiliations'],
      relatives = json['relatives'];
}