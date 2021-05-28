package kr.co.sist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.sist.vo.CarVO;
import kr.co.sist.vo.LoginDataVO;
import kr.co.sist.vo.LoginVO;

/**
 * 
 *	암호화된 비밀번호를 입력받아 로그인을 수행
 * @author user
 */
public class UserDAO {

	/**
	 * 아이디와 비밀번호를 입력받아 두개의 값으로 DB Table에서 조회되는 결과가 있다면
	*	로그인 성공을 보고 LoginDataVO를 생성하여 조회컬럼 값을 입력한 후 반환
	 * @param lVO
	 * @return
	 * @throws SQLException
	 */
	public LoginDataVO selectLogin(LoginVO lVO) throws SQLException{
		LoginDataVO ldVO=null;
		
		DbConnection dc=DbConnection.getInstance();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
		//1.Connection 얻기
			con=dc.getConn();
		//2.쿼리문 생성객체 얻기
			String selectQuery="select name,email from test_login where id=? and pass=?";
			pstmt=con.prepareStatement(selectQuery);
		//3.바인드변수에 값 할당
			pstmt.setString(1,lVO.getId());
			pstmt.setString(2,lVO.getPass());
		//4.쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
			
			if(rs.next()) {//where절과 id와 비밀번호로 조회된 레코드가 있음.로그인성공
				ldVO=new LoginDataVO(rs.getString("name"),rs.getString("email"));
			}//if
		}finally {
		//5.연결끊기
		dc.dbClose(con, pstmt, rs);
		}//finally
		
		return ldVO;
	}//selectLogin
	
	//제조사를 받아 제조사에 해당하는 차량의 모델명,연식,가격,옵션을 조회
	//maker가 null이거나 ""이라면 모든 차량 조회
	public List<CarVO> selectModel(String maker)throws SQLException{
		List<CarVO> list = new ArrayList<CarVO>();
		      
		      DbConnection dc = DbConnection.getInstance();
		      Connection con = null;
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      
		      try {
		      //1. JNDI사용객체 생성
		      //2. DataSource 얻기
		      //3. Connection 얻기
		         con = dc.getConn();
		      //4. 쿼리문 생성객체 얻기
		         StringBuilder selectModel = new StringBuilder();
		         selectModel
		         .append("   select    cmo.model, cmo.car_year, cmo.price, cmo.cc, cmo.car_option")
		         .append("   from      car_model cmo, car_maker cma")
		         .append("   where      (cmo.model = cma.model)");
		         if(maker!=null&&!"".equals(maker)) {
		        	 //상황에 따라 다른 쿼리문이 제작되어 실행되는 DynamicQuery
		        	 selectModel.append("and cma.maker=?");
		         }//if
		         
		         pstmt = con.prepareStatement(selectModel.toString());
		      //5. 바인드변수 값 설정
		         if(maker!=null&&!"".equals(maker)) {
		         pstmt.setString(1, maker);
		         }//if
		         //6. 쿼리문 수행 후 결과 얻기
		         rs = pstmt.executeQuery();
		         
		         CarVO cVO = null;
		         
		         while(rs.next()) {
		            //조회된 레코드 한건을 VO에 저장
		            cVO = new CarVO(rs.getString("model"), rs.getNString("car_option"), 
		                  rs.getString("car_year"), rs.getInt("price"), rs.getInt("cc"));
		            //생성된 객체를 List에 추가
		            list.add(cVO);
		         }
		         
		      }finally {
		      //7. 연결 끊기
		         dc.dbClose(con, pstmt, rs);
		      }
		      return list;
	}//selectModel
	
	   public List<String> selectMaker()throws SQLException{
		      List<String> list=new ArrayList<String>();
		      
		      Connection con=null;
		      PreparedStatement pstmt=null;
		      ResultSet rs=null;
		      
		      DbConnection dc=DbConnection.getInstance();
		      
		      try {
		      //1. JNDI사용객체 생성.
		      //2. DataSource 얻기.
		      //3. Connection얻기.
		         con=dc.getConn();
		      //4. 쿼리문 생성객체 얻기
		         StringBuilder selectModel=new StringBuilder();
		         selectModel
		         .append("   select   maker from car_country   ");
		         
		         pstmt=con.prepareStatement( selectModel.toString() );
		      //6. 쿼리문 수행 후 결과 얻기
		         rs=pstmt.executeQuery();
		         
		         while( rs.next() ) {
		            //조회된 레코드 한건을 VO에 저장
		            list.add(rs.getString("maker"));
		         }//end while
		         
		      }finally {
		      //7. 연결 끊기
		         dc.dbClose(con, pstmt, rs);
		      }//end finally
		      
		      return list;
		   }//selectMaker
	
}//class
