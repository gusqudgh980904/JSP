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
 *	��ȣȭ�� ��й�ȣ�� �Է¹޾� �α����� ����
 * @author user
 */
public class UserDAO {

	/**
	 * ���̵�� ��й�ȣ�� �Է¹޾� �ΰ��� ������ DB Table���� ��ȸ�Ǵ� ����� �ִٸ�
	*	�α��� ������ ���� LoginDataVO�� �����Ͽ� ��ȸ�÷� ���� �Է��� �� ��ȯ
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
		//1.Connection ���
			con=dc.getConn();
		//2.������ ������ü ���
			String selectQuery="select name,email from test_login where id=? and pass=?";
			pstmt=con.prepareStatement(selectQuery);
		//3.���ε庯���� �� �Ҵ�
			pstmt.setString(1,lVO.getId());
			pstmt.setString(2,lVO.getPass());
		//4.������ ���� �� ��� ���
			rs=pstmt.executeQuery();
			
			if(rs.next()) {//where���� id�� ��й�ȣ�� ��ȸ�� ���ڵ尡 ����.�α��μ���
				ldVO=new LoginDataVO(rs.getString("name"),rs.getString("email"));
			}//if
		}finally {
		//5.�������
		dc.dbClose(con, pstmt, rs);
		}//finally
		
		return ldVO;
	}//selectLogin
	
	//�����縦 �޾� �����翡 �ش��ϴ� ������ �𵨸�,����,����,�ɼ��� ��ȸ
	//maker�� null�̰ų� ""�̶�� ��� ���� ��ȸ
	public List<CarVO> selectModel(String maker)throws SQLException{
		List<CarVO> list = new ArrayList<CarVO>();
		      
		      DbConnection dc = DbConnection.getInstance();
		      Connection con = null;
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      
		      try {
		      //1. JNDI��밴ü ����
		      //2. DataSource ���
		      //3. Connection ���
		         con = dc.getConn();
		      //4. ������ ������ü ���
		         StringBuilder selectModel = new StringBuilder();
		         selectModel
		         .append("   select    cmo.model, cmo.car_year, cmo.price, cmo.cc, cmo.car_option")
		         .append("   from      car_model cmo, car_maker cma")
		         .append("   where      (cmo.model = cma.model)");
		         if(maker!=null&&!"".equals(maker)) {
		        	 //��Ȳ�� ���� �ٸ� �������� ���۵Ǿ� ����Ǵ� DynamicQuery
		        	 selectModel.append("and cma.maker=?");
		         }//if
		         
		         pstmt = con.prepareStatement(selectModel.toString());
		      //5. ���ε庯�� �� ����
		         if(maker!=null&&!"".equals(maker)) {
		         pstmt.setString(1, maker);
		         }//if
		         //6. ������ ���� �� ��� ���
		         rs = pstmt.executeQuery();
		         
		         CarVO cVO = null;
		         
		         while(rs.next()) {
		            //��ȸ�� ���ڵ� �Ѱ��� VO�� ����
		            cVO = new CarVO(rs.getString("model"), rs.getNString("car_option"), 
		                  rs.getString("car_year"), rs.getInt("price"), rs.getInt("cc"));
		            //������ ��ü�� List�� �߰�
		            list.add(cVO);
		         }
		         
		      }finally {
		      //7. ���� ����
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
		      //1. JNDI��밴ü ����.
		      //2. DataSource ���.
		      //3. Connection���.
		         con=dc.getConn();
		      //4. ������ ������ü ���
		         StringBuilder selectModel=new StringBuilder();
		         selectModel
		         .append("   select   maker from car_country   ");
		         
		         pstmt=con.prepareStatement( selectModel.toString() );
		      //6. ������ ���� �� ��� ���
		         rs=pstmt.executeQuery();
		         
		         while( rs.next() ) {
		            //��ȸ�� ���ڵ� �Ѱ��� VO�� ����
		            list.add(rs.getString("maker"));
		         }//end while
		         
		      }finally {
		      //7. ���� ����
		         dc.dbClose(con, pstmt, rs);
		      }//end finally
		      
		      return list;
		   }//selectMaker
	
}//class
