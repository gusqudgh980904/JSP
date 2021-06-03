package kr.co.sist.vo;

public class CounterVO {
	private int cnt;

	public CounterVO() {
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt += cnt;//누적합.기존의 값과 새로운 값을 누적시킨다
	}

	

}
