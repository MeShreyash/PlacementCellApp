class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String time;
  String salary;
  String deadline;
  List<String> req;

  
  Job(this.company, this.logoUrl, this.isMark, this.title, this.time, this.salary, this.deadline,this.req);

  static List<Job> generateJobs() {
    return [
      Job(
        'Google',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjzC2JyZDZ_RaWf0qp11K0lcvB6b6kYNMoqtZAQ9hiPZ4cTIOB',
        false,
        'Software Developer',        
        'Full Time',
        '40,00,000',
        '16 June',
        [
          'Bahut Badiya company hai, mil rahi h to chodna matt !!!',
        ],
      ),
      Job(
        'Microsoft',
        'http://t3.gstatic.com/images?q=tbn:ANd9GcS6km-cD_vSytVSWHMXb5BsNyvx-Ee58bq9Ak5VyKaYZtKokr7C',
        true,
        'Application Engineer',        
        'Intern',
        '39,00,000',
        '1 August',
        [
          'Internship ache se krlo , PPO bhi mil jaayega.',
        ],
      ),
    ];
  }
}
