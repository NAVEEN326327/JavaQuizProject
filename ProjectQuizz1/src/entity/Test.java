package entity;

public class Test {
   int id;
   String testName;
   String status;
   
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTestName() {
	return testName;
}
public void setTestName(String testName) {
	this.testName = testName;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public Test(int id, String testName, String status) {
	super();
	this.id = id;
	this.testName = testName;
	this.status = status;
}

   
}
