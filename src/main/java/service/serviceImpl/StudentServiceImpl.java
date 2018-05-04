package service.serviceImpl;

import domain.Student;
import org.springframework.stereotype.Service;
import service.StudentService;
@Service("studentService")
    public class StudentServiceImpl extends BaseServiceImpl<Student> implements StudentService {
}
