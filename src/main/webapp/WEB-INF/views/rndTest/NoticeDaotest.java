package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.NoticeDtoPJH;


public class NoticeDao {

	
DataSource dataSource;
	
	
	
//DataSource 초기화를 위한 생성자
public NoticeDao() {
    try {
        // JNDI를 사용하여 DataSource 설정
        Context context = new InitialContext();
        // "java:comp/env/jdbc/makuswag"는 DataSource의 JNDI 이름으로 context.xml에서 설정해야 함
        dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag");

    } catch (Exception e) {
        e.printStackTrace();
    }
}

// 특정 페이지에 표시할 공지사항 목록을 가져오는 메서드
public ArrayList<NoticeDtoPJH> list(int requestPage, int numOfTuplePerPage, String searchInput) {
    ArrayList<NoticeDtoPJH> dtos = new ArrayList<NoticeDtoPJH>();
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    int offset = (requestPage - 1) * numOfTuplePerPage;

    try {
        connection = dataSource.getConnection();
        // SQL 쿼리를 사용하여 페이지 및 페이지당 튜플 수에 기반한 제한된 수의 공지사항을 가져옴
        
        String query = "SELECT noCategory, noTitle, noDate, noContent, noImage FROM notice";
        if (searchInput != null && !searchInput.isEmpty()) {
            query += " WHERE noTitle LIKE ? ";
        }
        query += " LIMIT ?,?";
        preparedStatement = connection.prepareStatement(query);

        // 조건부 WHERE 절의 파라미터 설정
        int parameterIndex = 1;
        if (searchInput != null && !searchInput.isEmpty()) {
            preparedStatement.setString(parameterIndex++, "%" + searchInput + "%");
        }

        preparedStatement.setInt(parameterIndex++, offset);
        preparedStatement.setInt(parameterIndex, numOfTuplePerPage);

        resultSet = preparedStatement.executeQuery();


        // 결과 집합을 반복하며 NoticeDtoPJH 객체를 생성
        while (resultSet.next()) {
            String noCategory = resultSet.getString("noCategory");
            String noTitle = resultSet.getString("noTitle");
            String noDate = resultSet.getString("noDate");
            String noContent = resultSet.getString("noContent");
            String noImage = resultSet.getString("noImage");

            NoticeDtoPJH dto = new NoticeDtoPJH(noTitle, noCategory, noDate, noContent, noImage);
            dtos.add(dto);
        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (resultSet != null) resultSet.close();
            if (preparedStatement != null) preparedStatement.close();
            if (connection != null) connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    return dtos;
}

//데이터베이스에 저장된 공지사항의 총 수를 계산하는 method
public int countTuple(String searchInput) {
 Connection conn = null;
 PreparedStatement psmt = null;
 ResultSet rs = null;
 int count = 0;

 try {
     conn = dataSource.getConnection();
     // SQL 쿼리를 사용하여 공지사항의 총 수를 계산
     String query = "SELECT COUNT(*) FROM notice";
     if (searchInput != null && !searchInput.isEmpty()) {
         query += " WHERE noTitle LIKE ?";
     }
     psmt = conn.prepareStatement(query);

     // 조건부 WHERE 절의 파라미터 설정
     if (searchInput != null && !searchInput.isEmpty()) {
         psmt.setString(1, "%" + searchInput + "%");
     }

     rs = psmt.executeQuery();

     // 결과에서 수를 가져옴
     if (rs.next()) {
         count = rs.getInt(1);
         System.out.println("list-count success 노티스다오");
     }

 } catch (Exception e) {
     System.out.println("list-count fail");
     e.printStackTrace();
 } finally {
	    try {
            if (rs != null) rs.close();
            if (psmt != null) psmt.close();
            if (conn != null) conn.close();
            System.out.println("< rs, psmt, conn close 성공 (노티스다오)>");
        } catch (Exception e) {
            System.out.println("< rs, psmt, conn close Fail>");
        }
 }

 return count;
}
//페이지 수를 계산하는 method
public int calculateTotalPage(int numOfTuplesPerPage, String searchInput) {
 int countedTuple = countTuple(searchInput);
 int totalPage = 0;

 if (countedTuple % numOfTuplesPerPage == 0) {
     totalPage = countedTuple / numOfTuplesPerPage;
 } else {
     totalPage = countedTuple / numOfTuplesPerPage + 1;
 }

 return totalPage;
}



}
