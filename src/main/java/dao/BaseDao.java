package dao;

import java.io.Serializable;
import java.util.List;

public interface BaseDao<T>{
//添加
    Boolean save(T t);
//更新
    Boolean update(T t);
//删除
    Boolean delete(T t);
    Boolean delete(String hql);

//获取一个实体
    T get(Class<T> entityClazz, Serializable id);
//获取符合条件的实体数
    int findCount(Class<T> entityClazz);
//查找数据
    List<T> find(String hql, String[] str);
    List<T> find(Class<T> entityClazz);


    //分页
    List<T> findByPage(Class<T> EntityClazz);
    List<T> findByPage(String hql, String[] str);
}
