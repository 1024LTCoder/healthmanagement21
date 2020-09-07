package com.model.pojo;

public class Menus {
    private Integer menuId;
    private String menuPath;
    private Integer menuResId;
    private Integer menuParId;
    private Integer menuGrpId;
    private String menuName;

    public Menus() {
    }

    public Menus(Integer menuId, String menuPath, Integer menuResId, Integer menuParId, Integer menuGrpId, String menuName) {
        this.menuId = menuId;
        this.menuPath = menuPath;
        this.menuResId = menuResId;
        this.menuParId = menuParId;
        this.menuGrpId = menuGrpId;
        this.menuName = menuName;
    }

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public String getMenuPath() {
        return menuPath;
    }

    public void setMenuPath(String menuPath) {
        this.menuPath = menuPath;
    }

    public Integer getMenuResId() {
        return menuResId;
    }

    public void setMenuResId(Integer menuResId) {
        this.menuResId = menuResId;
    }

    public Integer getMenuParId() {
        return menuParId;
    }

    public void setMenuParId(Integer menuParId) {
        this.menuParId = menuParId;
    }

    public Integer getMenuGrpId() {
        return menuGrpId;
    }

    public void setMenuGrpId(Integer menuGrpId) {
        this.menuGrpId = menuGrpId;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    @Override
    public String toString() {
        return "Menus{" +
                "menuId=" + menuId +
                ", menuPath='" + menuPath + '\'' +
                ", menuResId=" + menuResId +
                ", menuParId=" + menuParId +
                ", menuGrpId=" + menuGrpId +
                ", menuName='" + menuName + '\'' +
                '}';
    }
}
