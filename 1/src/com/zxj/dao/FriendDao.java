package com.zxj.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.zxj.form.FriendForm;
import com.zxj.tool.JDBConnection;

public class FriendDao {
	private JDBConnection connection = null;
	public FriendDao() {
		connection = new JDBConnection();
	}
	// ��ѯ��������
		public List queryFriend() {
			List list = new ArrayList();
			FriendForm form = null;
			String sql = "select * from tb_friend";
			ResultSet rs = connection.executeQuery(sql);
			try {
				while (rs.next()) {
					form = new FriendForm();
					form.setId(Integer.valueOf(rs.getString(1)));
					form.setName(rs.getString(2));
					form.setQQNumber(rs.getString(3));
					form.setDescription(rs.getString(4));
					list.add(form);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
		// ��������
		public boolean addFriend(FriendForm form) {
			boolean flag = false;
			String sql = "insert into tb_friend values ('0','" + form.getName() + "','"
					+ form.getQQNumber() + "','" + form.getDescription() + "')";
			if (connection.executeUpdate(sql)) {
				flag = true;
			}
			return flag;
		}
		// ɾ������
		public boolean deleteFriend(Integer id) {
			boolean flag = false;
			String sql = "delete from tb_friend where id='" + id + "'";
			if (connection.executeUpdate(sql)) {
				flag = true;
			}
			return flag;
		}
		// ����������Ϣ��ѯ
		public FriendForm queryFriendForm(String id) {
			FriendForm form = null;
			String sql = "select * from tb_friend where id='" + id + "'";
			ResultSet rs = connection.executeQuery(sql);
			try {
				while (rs.next()) {
					form = new FriendForm();
					form.setId(Integer.valueOf(rs.getString(1)));
					form.setName(rs.getString(2));
					form.setQQNumber(rs.getString(3));
					form.setDescription(rs.getString(4));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return form;
		}
		// �޸�����
		public boolean updateFriend(FriendForm form) {
			boolean flag = false;
			String sql = "update tb_friend set name='" + form.getName()
					+ "',QQNumber='" + form.getQQNumber() + "',description='"
					+ form.getDescription() + "' where id='" + form.getId() + "'";
			if (connection.executeUpdate(sql)) {
				flag = true;
			}
			return flag;
		}
}
