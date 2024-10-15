class FitnessModel {
  int? readinessScore;
  String? trainingIntensity;
  double? sleepHours;
  String? sleepQuality;
  String? readinessScoreTitle;
  String? title;
  int? rhr;
  String? readinessScoreDesc;
  String? desc;

  FitnessModel(
      {this.readinessScore,
      this.trainingIntensity,
      this.sleepHours,
      this.sleepQuality,
      this.readinessScoreTitle,
      this.title,
      this.rhr,
      this.readinessScoreDesc,
      this.desc});

  FitnessModel.fromJson(Map<String, dynamic> json) {
    readinessScore = json['readiness_score'];
    trainingIntensity = json['training_intensity'];
    sleepHours = json['sleep_hours'];
    sleepQuality = json['sleep_quality'];
    readinessScoreTitle = json['readiness_score_title'];
    title = json['title'];
    rhr = json['rhr'];
    readinessScoreDesc = json['readiness_score_desc'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['readiness_score'] = this.readinessScore;
    data['training_intensity'] = this.trainingIntensity;
    data['sleep_hours'] = this.sleepHours;
    data['sleep_quality'] = this.sleepQuality;
    data['readiness_score_title'] = this.readinessScoreTitle;
    data['title'] = this.title;
    data['rhr'] = this.rhr;
    data['readiness_score_desc'] = this.readinessScoreDesc;
    data['desc'] = this.desc;
    return data;
  }
}
