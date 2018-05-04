package dao.daoImpl;

import dao.UserDao;
import domain.User;
import org.springframework.stereotype.Component;

@Component("userDao")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {
}
