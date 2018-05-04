package service.serviceImpl;

import common.Page;
import dao.BaseDao;
import org.springframework.beans.factory.annotation.Autowired;
import service.BaseService;

import javax.annotation.Resource;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class BaseServiceImpl<T> implements BaseService<T> {
    @Autowired
    private BaseDao<T> dao;
    @Resource(name = "page")
    private Page page;
    @Override
    public Boolean save(T t) {
        try{
            dao.save(t);
            return true;
        }catch (Exception e){
            e.getStackTrace();
            return false;
        }
    }

    @Override
    public Boolean update(T t) {
        try{
            dao.update(t);
        }catch(Exception e){
            e.getStackTrace();
            return false;
        }
        return true;
    }
//删除
    @Override
    public Boolean delete(T t) {
        try{
            dao.delete(t);
        }catch(Exception e){
            e.getStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public Boolean delete(Class<T> EntityClazz, Serializable id) {
        try{
            T t = dao.get(EntityClazz,id);
            dao.delete(t);
        }catch(Exception e){
            e.getStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public Boolean delete(Class<T> EntityClazz, Serializable[] ids) {
        String sql="delete from "+EntityClazz.getSimpleName() +" where sid in(";
        int len = ids.length;
        for (int i=0;i<len;i++ )
            if (i<len-1)
                sql+="'"+ids[i]+"',";
            else
                sql+="'"+ids[i]+"')";
            System.out.println(sql);
            return dao.delete(sql);
    }
//获取一个实体
    @Override
    public T get(Class<T> EntityClazz, Serializable id) {
        return  dao.get(EntityClazz,id);
    }
//获取符合条件的数据数
    @Override
    public int findCount(Class<T> EntityClazz) {
        return dao.findCount(EntityClazz);
    }
//查询数据
    @Override
    public List<T> Find(Class<T> EntityClazz, Map<String, String> map) {
        //判断是否需要分页
        if (page.getNeedPage()){
            String[]params=new String[map.size()];
            String hql="";
            return  dao.findByPage(hql,params);
        }else{
            String[]params=new String[map.size()];
            String hql="";
            return  dao.find(hql,params);
        }

    }
    @Override
    public List<T> Find(Class<T> EntityClazz) {
        if (page.getNeedPage()){
            return dao.findByPage(EntityClazz);
        }else{
            return dao.find(EntityClazz);
        }
    }
}
