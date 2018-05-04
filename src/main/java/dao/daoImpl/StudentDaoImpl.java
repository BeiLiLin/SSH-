package dao.daoImpl;

import dao.StudentDao;
import domain.Student;
import org.springframework.stereotype.Component;

@Component("studentDao")
public class StudentDaoImpl extends BaseDaoImpl<Student> implements StudentDao {
}
