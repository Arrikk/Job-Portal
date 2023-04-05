class Job {
  String company;
  String logoUrl;
  bool isMarked;
  String title;
  String location;
  String time;
  List<String> requirement;

  Job(
    this.company,
    this.logoUrl,
    this.isMarked,
    this.title,
    this.location,
    this.time,
    this.requirement,
  );

  static List<Job> generateJobs() {
    return [
      Job(
        'Google LLC',
        'assets/images/google_logo.png',
        false,
        "Principle Product Design",
        "417 Marion, New york\n United States",
        "Full Time",
        [
          "Creative with an eye with shape and color",
          "Understand different materials and product methods",
          "How technical, practical and scientific knowledge are",
          "Interested in the way people choose and use product"
        ],
      ),
      Job(
        'Airbnb LLC',
        'assets/images/airbnb_logo.png',
        true,
        "VP Business Intelegence",
        "50 Herminia Stravenue, \nCanada",
        "Full Time",
        [
          "Creative with an eye with shape and color",
          "Understand different materials and product methods",
          "How technical, practical and scientific knowledge are",
          "Interested in the way people choose and use product"
        ],
      ),
      Job(
        'Google LLC',
        'assets/images/google_logo.png',
        false,
        "Principle Product Design",
        "417 Marion, New york\n United States",
        "Full Time",
        [
          "Creative with an eye with shape and color",
          "Understand different materials and product methods",
          "How technical, practical and scientific knowledge are",
          "Interested in the way people choose and use product"
        ],
      ),
      Job(
        'Linkedin Corp',
        'assets/images/linkedin_logo.png',
        false,
        "Talent Acquisition Lead",
        "566 Eleanore Square,\nFrance",
        "Full Time",
        [
          "Creative with an eye with shape and color",
          "Understand different materials and product methods",
          "How technical, practical and scientific knowledge are",
          "Interested in the way people choose and use product"
        ],
      ),
    ];
  }
}
