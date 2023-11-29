package bao;

import java.sql.*;

public class DB {
	public Connection conn=null;
    public Statement stmt=null;
    public ResultSet rs=null;
    public  DB(){
            try{ 
                    Class.forName("com.mysql.cj.jdbc.Driver");
            }catch(java.lang.ClassNotFoundException e){
                    System.err.println("mysql����δע��");
            } 
    }
/***************************************************
     *method name:	executeQuery()
     *����:ִ�в�ѯ����
     *return value: ResultSet
****************************************************/
    public ResultSet executeQuery(String sql){
        try{
        	
                conn=DriverManager.getConnection("jdbc:mysql://www.icodedock.com:3306/huji_sys?useSSL=false&serverTimezone=Asia/Shanghai&useUnicode=true&characterEncoding=utf-8","huji_sys","huji_sys");
                stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                rs=stmt.executeQuery(sql);
        }
        catch(SQLException ex)
        {
                System.err.println(ex.getMessage());
                System.out.println("conn����##########");
                
        }
        return rs;
}
    public ResultSet GetRs(String SQL){
		try
		{
			 conn=DriverManager.getConnection("jdbc:mysql://www.icodedock.com:3306/huji_sys?useSSL=false&serverTimezone=Asia/Shanghai&useUnicode=true&characterEncoding=utf-8","huji_sys","huji_sys");
			Statement Smt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			ResultSet Rs = Smt.executeQuery(SQL);
			return Rs;	
		}
		catch(SQLException e)
		{
			System.out.println("ʧ�ܣ�");
			return null;
		}
	}
/***************************************************
     *method name:	close()
     *����:�ر����ݿ�����
     *return value: 	void
****************************************************/
     public void close(){
        try {
          if (rs != null) rs.close();
        }
        catch (Exception e) {
          e.printStackTrace(System.err);
        }finally{}
        try {
          if (stmt != null) stmt.close();
        }
        catch (Exception e) {
          e.printStackTrace(System.err);
        }finally{}
        try {
          if (conn != null) {
            conn.close();
          }
        }
        catch (Exception e) {
          e.printStackTrace(System.err);
        }finally{}
      }
}

