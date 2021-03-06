package prj.novel.itemshop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ItemShop_Dao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DataSource ds;
	
	public ItemShop_Dao(){
		try{
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/mysqlDB");
		}
		catch(Exception err){
			System.out.println("DB연결 실패 : " + err);
		}
	}
	
	public void freeConnection(){
		if(rs != null){try{rs.close();}catch(Exception err){}}
		if(pstmt != null){try{pstmt.close();}catch(Exception err){}}
		if(con != null){try{con.close();}catch(Exception err){}}
	}
	
	
	public ArrayList getUtilList(){
		ArrayList list = new ArrayList();
		

		String sql = null;
		
		sql = "select * from pur_history";

		try{
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();

			while(rs.next()){
				ItemShop_Dto dto = new ItemShop_Dto();
				dto.setPur_date(rs.getString("pur_date"));
				dto.setPur_way(rs.getString("pur_way"));
				dto.setSum(rs.getInt("sum"));
				dto.setUtil_kind(rs.getString("util_kind"));
				
				
				// pur_history.jsp에게 보냄.
				list.add(dto);
			}
		}
		catch(Exception err){
			System.out.println("getUtilList() : " + err);
		}
		finally{
			freeConnection();
		}
		return list;
	}
	

	public void insertPur_History(String history[], ItemShop_Dto dto){
		// insert into 테이블명 (컬럼명 ...) values(값);
		String sql = "insert into pur_history(pur_date,pur_way,sum,util_kind)"
				+ "values(now(),?,?,?)";
		

		try{
			// DB 연결
			con = ds.getConnection();
			
			
			// DB에 값 넣기
			pstmt = con.prepareStatement(sql);
			//pstmt.setInt(1, dto.getSum());
			pstmt.setString(1, dto.getPur_way());
			pstmt.setString(2, history[1]);
			pstmt.setString(3, history[0]);
			
		
			
			// insert문 할 때는 'pstmt.executeUpdate();' 필요 
			pstmt.executeUpdate();
			// 쿼리문을 실행
		}
		catch(Exception err){
			System.out.println("insertPur_History : " + err);
		}
		finally{
			freeConnection();
		}
	}
	
}
