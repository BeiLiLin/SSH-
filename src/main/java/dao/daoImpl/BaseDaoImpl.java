package dao.daoImpl;

import common.Page;
import dao.BaseDao;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.transaction.annotation.Transactional;
import java.sql.*;
import utils.DBHelper;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

@Transactional
public class BaseDaoImpl<T>  implements BaseDao<T>{
    @Resource(name = "sessionFactory")
    private SessionFactory sessionFactory;
    @Resource(name = "page")
    private Page page;
    //添加
    @Override
    public Boolean save(T t) {
        sessionFactory.getCurrentSession().save(t);
        return true;
    }
    //更新
    @Override
    public Boolean update(T t) {
        sessionFactory.getCurrentSession().update(t);
        return true;
    }
    //删除
    @Override
    public Boolean delete(T t) {
        System.out.println("delete");
        sessionFactory.getCurrentSession().delete(t);
        return true;
    }

    @Override
    public Boolean delete(String sql) {
        Connection connection = DBHelper.getConnection();
        try {
            connection.prepareStatement(sql).execute();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    //获取一个实体
    @SuppressWarnings("unchecked")
    public T get(Class<T> entityClazz, Serializable id) {
        return (T)sessionFactory.getCurrentSession().get(entityClazz,id);
    }
    //获取符合条件的实体数
    @Override
    public int findCount(Class<T> entityClazz) {
        return sessionFactory.getCurrentSession().createQuery(" from "+entityClazz.getSimpleName()).list().size();
    }
    //查找数据
    @Override
    public List<T> find(String hql, String[] str) {
        return null;
    }

    @Override
    public List<T> find(Class<T> entityClazz) {
        return null;
    }

    //分页
    @Override
    @SuppressWarnings("unchecked")
    public List<T> findByPage(Class<T> EntityClazz) {
        int min = (page.getPageNum()-1)*page.getPageSize();
        String hql = "from "+EntityClazz.getSimpleName();
        System.out.println(hql);
        return sessionFactory.getCurrentSession().createQuery(hql)
                .setFirstResult(min)
                .setMaxResults(page.getPageSize())
                .list();
    }

    @Override
    public List<T> findByPage(String hql, String[] str) {
        return null;
    }
}
