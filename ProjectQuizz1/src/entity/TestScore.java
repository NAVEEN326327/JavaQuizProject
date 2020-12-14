package entity;

public class TestScore {
   int id;
   String testCode;
   int score;
   int userId;
public TestScore(int id, String testCode, int score, int userId) {
	super();
	this.id = id;
	this.testCode = testCode;
	this.score = score;
	this.userId = userId;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTestCode() {
	return testCode;
}
public void setTestCode(String testCode) {
	this.testCode = testCode;
}
public int getScore() {
	return score;
}
public void setScore(int score) {
	this.score = score;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
   
   
}
