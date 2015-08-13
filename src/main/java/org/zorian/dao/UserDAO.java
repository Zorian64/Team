package org.zorian.dao;

import org.zorian.model.User;

public interface UserDAO {
	
	public User getUser(String login);

}
