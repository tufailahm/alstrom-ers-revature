package com.training.pms.dao;

import com.training.ers.model.User;

public interface LoginDAO {
		public boolean register(User user);
		public boolean validate(String username,String password);

}
