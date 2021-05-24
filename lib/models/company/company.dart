class Company {
  final String title;
  Company({this.title});

  static get pseudoCompanies => [
        Company(title: 'Lorem ipsum'),
        Company(title: 'Lorem ipsum'),
        Company(title: 'Lorem ipsum'),
        Company(title: 'Lorem ipsum'),
      ];
}
