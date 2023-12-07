Map<String, Decimal> subjectAndMarks1 = new Map<String, Decimal>{
    'math' => 75.5,
    'physics' => 56.0,
    'english' => 80.5,
    'chemistry' => 70.0,
    'computer' => 58.5
};

StudentDemo student1 = new StudentDemo('1001', 'Peter Parker', subjectAndMarks1);

System.debug('Admission Code 1: ' + student1.getAdmissionNo() +
             '\nStudent Name 1: ' + student1.getStudentName() +
             '\nSubjects1: ' + student1.getSubjects() +
             '\nMarks 1: ' + student1.getMarksAsString() +
             '\nMarks of english: ' + student1.getMarks('english') +
             '\nMarks of physics: ' + student1.getMarks('physics') +
             '\n' + student1.getStudentName() + ' did not study Hindi. Marks of Hindi: ' + student1.getMarks('Hindi') +
             '\nTotal Marks 1: ' + student1.getTotalMarks() +
             '\nAverage Mark 1: ' + student1.getAverageMarks().setScale(1) +
             '\nAbove average subject and marks: ' + student1.getSubjectAndMarksAboveAverage());