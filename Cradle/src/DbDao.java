import java.sql.*;

public class DbDao 
{
	private Connection conn;
	private String driver;
	private String url;
	private String user_id;
	private String password;
	public DbDao()
	{
		//modify via GitHub web page
	}
	public DbDao(String driver , String url 
		, String username , String pass)
	{
		this.driver = driver;
		this.url = url;
		this.user_id = username;
		this.password = pass; 
	}
	//�����Ǹ�����Ա���Ե�setter��getter����
	public void setDriver(String driver) {
		this.driver = driver; 
	}
	public void setUrl(String url) {
		this.url = url; 
	}
	public void setUsername(String username) {
		this.user_id = username; 
	}
	public void setPass(String pass) {
		this.password = pass; 
	}
	public String getDriver() {
		return (this.driver); 
	}
	public String getUrl() {
		return (this.url); 
	}
	public String getUsername() {
		return (this.user_id); 
	}
	public String getPass() {
		return (this.password); 
	}
	//��ȡ���ݿ�����
	public Connection getConnection() throws Exception
	{
		if (conn == null)
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,user_id,this.password);
		}
		return conn;
	}
	//������¼
	public boolean insert(String sql , Object... args)
		throws Exception
	{
		PreparedStatement pstmt = getConnection().prepareStatement(sql);
		for (int i = 0; i < args.length ; i++ )
		{
			pstmt.setObject( i + 1 , args[i]);
		}
		if (pstmt.executeUpdate() != 1)
		{
			return false;
		}
		pstmt.close();
		return true;
	}
	//ִ�в�ѯ
	public ResultSet query(String sql , Object... args)
		throws Exception
	{
		PreparedStatement pstmt = getConnection().prepareStatement(sql);
		for (int i = 0; i < args.length ; i++ )
		{
			pstmt.setObject( i + 1 , args[i]);
		}
		return pstmt.executeQuery();
	}
	//ִ���޸�
	public void modify(String sql , Object... args)
		throws Exception
	{
		PreparedStatement pstmt = getConnection().prepareStatement(sql);
		for (int i = 0; i < args.length ; i++ )
		{
			pstmt.setObject( i + 1 , args[i]);
		}
		pstmt.executeUpdate();
		pstmt.close();
	}
	//�ر����ݿ����ӵķ���
	public void closeConn()
		throws Exception
	{
		if (conn != null && !conn.isClosed())
		{
			conn.close();
		}
	}
}
