package service.serviceImpl;

import domain.User;
import org.springframework.stereotype.Service;
import service.UserService;
@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService{
}
