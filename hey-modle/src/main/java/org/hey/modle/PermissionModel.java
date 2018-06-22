package org.hey.modle;

public class PermissionModel {
    private long id;
    private String permission;
    private String description;
    private long isDeleted;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public long getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(long isDeleted) {
        this.isDeleted = isDeleted;
    }
}
