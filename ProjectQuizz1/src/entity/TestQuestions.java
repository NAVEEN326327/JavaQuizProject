package entity;

public class TestQuestions {
    int id;
    String questions;
    String answer1;
    String answer2;
    String answer3;
    String answer4;
    String rightOption;
    String comments;
    
    public TestQuestions() {}
	public TestQuestions(int id, String questions, String answer1, String answer2, String answer3, String answer4,
			String rightOption, String comments) {
		super();
		this.id = id;
		this.questions = questions;
		this.answer1 = answer1;
		this.answer2 = answer2;
		this.answer3 = answer3;
		this.answer4 = answer4;
		this.rightOption = rightOption;
		this.comments = comments;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestions() {
		return questions;
	}
	public void setQuestions(String questions) {
		this.questions = questions;
	}
	public String getAnswer1() {
		return answer1;
	}
	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}
	public String getAnswer2() {
		return answer2;
	}
	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}
	public String getAnswer3() {
		return answer3;
	}
	public void setAnswer3(String answer3) {
		this.answer3 = answer3;
	}
	public String getAnswer4() {
		return answer4;
	}
	public void setAnswer4(String answer4) {
		this.answer4 = answer4;
	}
	public String getRightOption() {
		return rightOption;
	}
	public void setRightOption(String rightOption) {
		this.rightOption = rightOption;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
    
    
}





//id number not null primary key,
//question varchar(1000) not null,
//answer1 varchar(255),
//answer2 varchar(255),
//answer3 varchar(255),
// answer4 varchar(255),
// right_option varchar(2),
// comments varchar(1000)
