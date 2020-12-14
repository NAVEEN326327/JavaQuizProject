package entity;

public class TestDetails {
	int id;
	int timeInMinute;
	String topic;
	
	public TestDetails(int id, int timeInMinute, String topic) {
		super();
		this.id = id;
		this.timeInMinute = timeInMinute;
		this.topic = topic;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTimeInMinute() {
		return timeInMinute;
	}
	public void setTimeInMinute(int timeInMinute) {
		this.timeInMinute = timeInMinute;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	
	

}
