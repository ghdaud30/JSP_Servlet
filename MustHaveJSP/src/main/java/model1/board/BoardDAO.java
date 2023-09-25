package model1.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.JDBConnect;
import jakarta.servlet.ServletContext;


public class BoardDAO extends JDBConnect{
	public BoardDAO(ServletContext application) {
		super(application);
	}
	
	public int selectCount(Map<String, Object> map) {
		int totalCount = 0;
		
		String query = "SELECT COUNT(*) FROM board";
		if(map.get("SearchWord") != null) {
			query += " WHERE " + map.get("searchField") + " "
					+ " LIKE '%" + map.get("searchWord") + "%'";
		}
		
		try {
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			rs.next();
			totalCount = rs.getInt(1);
		}
		catch(Exception e) {
			System.out.println("게시물 수를 구하는 중 예외 발생");
			System.out.println(e.getMessage());
		}
		
		return totalCount;
	}
	
	public List<BoardDTO> selectList(Map<String, Object> map){
		List<BoardDTO> bbs = new Vector<BoardDTO>();
		
		String query = "SELECT * FROM board";
		if(map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchField") + " "
					+ " LIKE '%" + map.get("searchWord") + "%' ";
		}
		query += " ORDER BY num DESC";
		
		try {
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				
				dto.setNum(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString(3));
				dto.setId(rs.getString(4));
				dto.setPostdate(rs.getDate(5));
				dto.setVisitcount(rs.getString(6));
				
				bbs.add(dto);
			}
		}catch(Exception e) {
			System.out.println("게시물 조회 중 예외 발생");
			System.out.println(e.getMessage());
		}
		
		return bbs;
	}

	public int inserWrite(BoardDTO dto) {
		int result = 0;
		
		try {
			String query = "Insert INTO board ( "
					+ " title,content,id,visitcount) "
					+ "VALUES ( "
					+ " ?, ?, ?, 0)";
			Connection con = getConnection();
			PreparedStatement psmt = con.prepareStatement(query);
			
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getId());
			
			result = psmt.executeUpdate();
			System.out.println(result);
		}
		catch(Exception e) {
			System.out.println("게시물 입력 중 예외 발생");
			System.out.println(e.getMessage());
		}
		
		return result;
	}
	
	// DAO에 게시물 조회 메서드 추가
	public BoardDTO selectView(String num) {
		BoardDTO dto = new BoardDTO();
		
		String query = "SELECT B.*, M.name"
				+ " FROM member M INNER JOIN board B "
				+ " ON M.id = B.id "
				+ " WHERE num = ? ";
		
		try {
			Connection con = getConnection();
			PreparedStatement psmt = con.prepareStatement(query);
			psmt.setString(1,num);
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setNum((rs.getString(1)));
				dto.setTitle((rs.getString(2)));
				dto.setContent((rs.getString(3)));
				dto.setId((rs.getString(4)));
				dto.setPostdate((rs.getDate(5)));
				dto.setVisitcount((rs.getString(6)));
				dto.setName((rs.getString("name")));
			}
		}
		catch (Exception e) {
			System.out.println("게시물 상세보기 중 예외 발생");
			System.out.println(e.getMessage());
		}
		
		return dto;
	}
	
	// DAO에 조회수 증가 메서드 추가
	public void updateVisitCount(String num) {
		
		String query = "UPDATE board SET "
				+ " visitcount = visitcount+1 "
				+ " WHERE num = ? ";
		
		try {
			Connection con = getConnection();
			PreparedStatement psmt = con.prepareStatement(query);
			psmt.setString(1, num);
			psmt.executeUpdate();
		}
		catch (Exception e) {
			System.out.println("게시물 조회수 증가 중 예외 발생");
			System.out.println(e.getMessage());
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
