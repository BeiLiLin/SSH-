package service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface BaseService<T> {
    //添加
    Boolean  save(T t);
    //修改
    Boolean update(T t);
    //删除
    Boolean delete(T t);
    Boolean delete(Class<T> EntityClazz , Serializable id);
    //批量删除
    Boolean delete(Class<T> EntityClazz , Serializable []ids);
    //查询
    T get(Class<T> EntityClazz , Serializable id);
    //获取表的总数
    int findCount(Class<T> EntityClazz);
    //查询数据
    List<T> Find(Class<T> EntityClazz,Map<String,String> map);
    List<T> Find(Class<T> EntityClazz);
}
