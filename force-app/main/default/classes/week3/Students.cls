public class Students {
     string firstName;
     string lastName;
     integer classYear;
     decimal marks;
     string major;

    public void setFirstName(string firstName){
        this.firstName = firstName;
    }

    public string getFirstName(){
        return this.firstName;
    }

    public void setLastName(string lastName){
        this.lastName = lastName;
    }
    
    public string getLastName(){
        return this.lastName;
    }

    public void setClassYear(integer classYear){
        integer currentYear = date.today().year();
        
        if (classYear <= currentYear && classYear >= (currentYear-100)) {
            this.classYear = classYear;
        } else {
            this.classYear = 0;
            system.debug('there is no such class');
        }
    }

    public integer getClassYear (){
        return this.classYear;
    }
    
    public void setMarks(decimal marks){
        if (marks <= 100 && marks >= 0) {
            this.marks = marks;
        } else {
            this.marks = -1;
            system.debug('not valid mark');
        }
    }

    public decimal getMarks(){
        return this.marks;
    }

    public void setMajor(string major){
        if (major.length() <= 2) {
            this.major = 'NA';
            system.debug('no such major found');
        }else{
            this.major = major;
        }
    }

    public string getMajor(){
        return this.major;
    }

    
    public String generateReport() {
        String grade;
        if (this.marks >= 90) {
            grade = 'A';
        } else if (this.marks >= 80) {
            grade = 'B';
        } else if (this.marks >= 70) {
            grade = 'C';
        } else if (this.marks >= 60) {
            grade = 'D';
        } else if (this.marks < 60 && this.marks >= 0) {
            grade = 'F';
        } else {
            grade = 'X';
        }
        
        System.debug('Report Generated for ' + this.firstName + ' ' + this.lastName + ' of ' + this.classYear + ' - ' + this.major);
        return grade;
    }
}