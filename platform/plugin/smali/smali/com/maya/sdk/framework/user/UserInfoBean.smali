.class public Lcom/maya/sdk/framework/user/UserInfoBean;
.super Ljava/lang/Object;
.source "UserInfoBean.java"


# instance fields
.field isAdult:Z

.field isAuth:Z

.field platform:Ljava/lang/String;

.field pwd:Ljava/lang/String;

.field uname:Ljava/lang/String;

.field vname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getUname()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->uname:Ljava/lang/String;

    return-object v0
.end method

.method public getVname()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->vname:Ljava/lang/String;

    return-object v0
.end method

.method public isAdult()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->isAdult:Z

    return v0
.end method

.method public isAuth()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->isAuth:Z

    return v0
.end method

.method public setAdult(Z)V
    .locals 0
    .param p1, "isAdult"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->isAdult:Z

    .line 50
    return-void
.end method

.method public setAuth(Z)V
    .locals 0
    .param p1, "isAuth"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->isAuth:Z

    .line 44
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->platform:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->pwd:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setUname(Ljava/lang/String;)V
    .locals 0
    .param p1, "uname"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->uname:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setVname(Ljava/lang/String;)V
    .locals 0
    .param p1, "vname"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->vname:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfoBean [vname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->vname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->uname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->isAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAdult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/maya/sdk/framework/user/UserInfoBean;->isAdult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
