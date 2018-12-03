package clf.dangdang.vo;

public class Page {
	private int pageIndex;
	private int pageCounts;
	private Long allCounts;
	private int pageLastPage;
	private int firstIndex;
	private int lastIndex;
	private int nextPageIndex;
	private int upPageIndex;

	public Page() {
		super();
		this.pageCounts = 5;
	}

	public Page(int pageIndex) {
		this(pageIndex, 5);
	}

	public Page(int pageIndex, int pageCounts) {
		super();
		this.pageIndex = pageIndex;
		this.pageCounts = pageCounts;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		// ������ ��ʼ������
		this.pageIndex = pageIndex;
		this.nextPageIndex = pageIndex + 1;
		this.upPageIndex = pageIndex - 1;
		this.firstIndex = (pageIndex - 1) * pageCounts;
		this.lastIndex = pageIndex * pageCounts;
	}

	public int getPageCounts() {
		return pageCounts;
	}

	public void setPageCounts(int pageCounts) {
		this.pageCounts = pageCounts;
	}

	public Long getAllCounts() {
		return allCounts;
	}

	public void setAllCounts(Long allCounts) {
		this.allCounts = allCounts;
		int allCounts1 = Integer.parseInt(allCounts + "");
		int flag = allCounts1 / pageCounts;
		this.pageLastPage = (allCounts1 % pageCounts == 0) ? flag : flag + 1;
	}

	public int getPageLastPage() {
		return pageLastPage;
	}

	public void setPageLastPage(int pageLastPage) {
		this.pageLastPage = pageLastPage;
	}

	public int getFirstIndex() {
		return firstIndex;
	}

	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}

	public int getLastIndex() {
		return lastIndex;
	}

	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}

	public int getNextPageIndex() {
		return nextPageIndex;
	}

	public void setNextPageIndex(int nextPageIndex) {
		this.nextPageIndex = nextPageIndex;
	}

	public int getUpPageIndex() {
		return upPageIndex;
	}

	public void setUpPageIndex(int upPageIndex) {
		this.upPageIndex = upPageIndex;
	}

}
