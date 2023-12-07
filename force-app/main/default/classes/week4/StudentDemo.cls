public class StudentDemo {
    private String admissionNo;
    private String studentName;
    private Map<String, Decimal> subjectAndMarks;

    public StudentDemo(String admissionNo, String studentName, Map<String, Decimal> subjectAndMarks) {
        this.admissionNo = admissionNo;
        this.studentName = studentName;
        this.subjectAndMarks = subjectAndMarks;
    }

    public String getAdmissionNo() {
        return admissionNo;
    }

    public String getStudentName() {
        return studentName;
    }

    public Set<String> getSubjects() {
        return subjectAndMarks.keySet();
    }

    public String getMarksAsString() {
        List<String> marksList = new List<String>();
        for (Decimal mark : subjectAndMarks.values()) {
            marksList.add(String.valueOf(mark.setScale(1)));
        }
        return '(' + String.join(marksList, ', ') + ')';
    }

    public Decimal getMarks(String sub) {
        if (subjectAndMarks.containsKey(sub)) {
            return subjectAndMarks.get(sub);
        } else {
            System.debug(studentName + ' did not study ' + sub);
            return -1;
        }
    }

    public Decimal getTotalMarks() {
        Decimal total = 0;
        for (Decimal mark : subjectAndMarks.values()) {
            total += mark;
        }
        return total;
    }

    public Decimal getAverageMarks() {
        Decimal totalMarks = getTotalMarks();
        return totalMarks / subjectAndMarks.size();
    }

    public Map<String, Decimal> getSubjectAndMarksAboveAverage() {
        Map<String, Decimal> aboveAverageSubjects = new Map<String, Decimal>();
        Decimal averageMarks = getAverageMarks();
        for (String subject : subjectAndMarks.keySet()) {
            if (subjectAndMarks.get(subject) > averageMarks) {
                aboveAverageSubjects.put(subject, subjectAndMarks.get(subject));
            }
        }
        return aboveAverageSubjects;
    }
}