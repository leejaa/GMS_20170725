<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	public static final String ORACLE_DRIVER="oracle.jdbc.driver.OracleDriver";
	public static final String ORACLE_URL="jdbc:oracle:thin:@localhost:1521:xe";
	public static final String DB2_DRIVER="";
	public static final String DB2_URL="";
	public static final String MYSQL_DRIVER="";
	public static final String MYSQL_URL="";
	public static final String MSSQL_DRIVER="";
	public static final String MSSQL_URL="";
	public static final String MARIADB_DRIVER="";
	public static final String MARIADB_URL="";
	public static final String USERID="hanbit";
	public static final String PASSWORD="hanbit";
	public static final String TABLE_MEMBER="member";
	public static final String TABLE_ARTICLE="board";
	
	public static final String MEMBER_ID="id";
	public static final String MEMBER_NAME="name";
	public static final String MEMBER_PASSWORD="password";
	public static final String MEMBER_SSN="ssn";
	public static final String MEMBER_REGDATE="regdate";
	public static final String ARTICLE_SEQ="article_seq";
	public static final String ARTICLE_ID="id";
	public static final String ARTICLE_TITLE="title";
	public static final String ARTICLE_CONTENT="content";
	public static final String ARTICLE_REGDATE="regdate";
	public static final String ARTICLE_HITCOUNT="hitcount";
	public static final String COUNT="count";
	
	
	public static final String MEMBER_INSERT=String.format("INSERT INTO %s VALUES(?,?,?,SYSDATE,?,?,?,?,?,?)",TABLE_MEMBER);
	public static final String MEMBER_LIST=String.format("SELECT * FROM %s", TABLE_MEMBER);
	public static final String MEMBER_FINDBYNAME=String.format("SELECT * FROM %s WHERE %s=?", TABLE_MEMBER,MEMBER_NAME);
	public static final String MEMBER_FINDBYID=String.format("SELECT * FROM %s WHERE %s=?",TABLE_MEMBER,MEMBER_ID);
	public static final String MEMBER_COUNT=String.format("SELECT COUNT(*) AS COUNT FROM %s",TABLE_MEMBER);
	public static final String MEMBER_UPDATE=String.format("UPDATE %s SET %s=?,%s=? WHERE %s=?",TABLE_MEMBER,MEMBER_NAME,MEMBER_PASSWORD,MEMBER_ID);
	public static final String MEMBER_DELETE=String.format("DELETE %s WHERE %s=?",TABLE_MEMBER,MEMBER_ID);
	
	public static final String ARTICLE_INSERT=String.format("INSERT INTO %s VALUES(articles_seq.nextval,?,?,?,?,SYSDATE)",TABLE_ARTICLE);
	public static final String ARTICLE_LIST=String.format("SELECT * FROM %s",TABLE_ARTICLE);
	public static final String ARTICLE_FINDBYID=String.format("SELECT * FROM %s WHERE %s=?", TABLE_ARTICLE,ARTICLE_ID);
	public static final String ARTICLE_FINDBYSEQ=String.format("SELECT * FROM %s WHERE %s=?", TABLE_ARTICLE,ARTICLE_SEQ);
	public static final String ARTICLE_COUNT=String.format("SELECT COUNT(*) AS COUNT FROM %s",TABLE_ARTICLE);
	public static final String ARTICLE_UPDATE=String.format(
	"UPDATE %s SET %s=?,%s=? WHERE %s=?",TABLE_ARTICLE,ARTICLE_TITLE,ARTICLE_CONTENT,ARTICLE_SEQ);
	public static final String ARTICLE_DELETE=String.format("DELETE %s WHERE %s=?",TABLE_ARTICLE,ARTICLE_SEQ);
%>