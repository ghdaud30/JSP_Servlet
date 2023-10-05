package model2.mvcboard;

public class DaoTest {
	public static void main(String[] args) {
		
		MVCBoardDAO dao = new MVCBoardDAO();
		
		System.out.println("count" + dao.selectCount(null));
		
		System.out.println("select" + dao.selectListPage(null));
	}
}
