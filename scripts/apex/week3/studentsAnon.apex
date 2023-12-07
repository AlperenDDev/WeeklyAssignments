Students student1 = new Students();
student1.setFirstName('Mike');
student1.setLastName('Ross');
student1.setClassYear(2010);
student1.setMarks(90);
student1.setMajor('Law');
String grade1 = student1.generateReport();
System.debug('Report Generated for ' + student1.getFirstName() + ' ' + student1.getLastName() + ' of ' + student1.getClassYear() + ' - ' + student1.getMajor() + '. Final Grade of ' + student1.getFirstName() + ' is ' + grade1);

Students student2 = new Students();
student2.setFirstName('Lucifer');
student2.setLastName('Morningstar');
student2.setClassYear(2010);
student2.setMarks(10001);
student2.setMajor('la');
String grade2 = student2.generateReport();
System.debug('Report Generated for ' + student2.getFirstName() + ' ' + student2.getLastName() + ' of ' + student2.getClassYear()+ ' - ' + student2.getMajor() + '. Final Grade of ' + student2.getFirstName() + ' is ' + grade2);
