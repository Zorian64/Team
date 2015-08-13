package org.zorian.service;

import org.springframework.transaction.annotation.Transactional;
import org.zorian.dao.UserDAO;
import org.zorian.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;

	public User getUser(String login) {
		return userDAO.getUser(login);
	}

}
