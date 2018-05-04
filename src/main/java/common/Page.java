package common;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component("page")
@Scope(value = "session")
public class Page {
    private   int pageNum=1;
    private int pageSize = 10;
    private Boolean needPage = false;
    private Boolean needUpdatePageCount=true;
    private int pageCount = 0;
    public Page(){
    }

    public Boolean getNeedPage(){
        return needPage;
    }

    public void setNeedPage(Boolean needPage) {
        this.needPage = needPage;
    }

    public int getPageNum() {
        return pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public Boolean getNeedUpdatePageCount() {
        return needUpdatePageCount;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setNeedUpdatePageCount(Boolean needUpdatePageCount) {
        this.needUpdatePageCount = needUpdatePageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    @Override
    public String toString() {
        return "page{" +
                "pageNum=" + pageNum +
                ", pageSize=" + pageSize +
                '}';
    }
}
