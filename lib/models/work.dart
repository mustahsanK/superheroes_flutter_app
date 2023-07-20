class Work {
  String base;
  String occupation;

  Work(this.base, this.occupation);

  Work.fromJson(Map<String, dynamic> json)
    : base = json['base'],
      occupation = json['occupation'];
}