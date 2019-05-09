.class public Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;
.super Ljava/lang/Object;
.source "SubmitRoleBean.java"


# instance fields
.field private balance:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private partyName:Ljava/lang/String;

.field private roleId:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private vip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "0"

    iput-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->roleId:Ljava/lang/String;

    .line 6
    const-string v0, "0"

    iput-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->roleName:Ljava/lang/String;

    .line 7
    const-string v0, "0"

    iput-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->roleLevel:Ljava/lang/String;

    .line 8
    const-string v0, "0"

    iput-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->serverId:Ljava/lang/String;

    .line 9
    const-string v0, "0"

    iput-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->serverName:Ljava/lang/String;

    .line 10
    const-string v0, "0"

    iput-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->balance:Ljava/lang/String;

    .line 11
    const-string v0, "0"

    iput-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->vip:Ljava/lang/String;

    .line 12
    const-string v0, "0"

    iput-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->partyName:Ljava/lang/String;

    .line 13
    const-string v0, "0"

    iput-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->extra:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBalance()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->partyName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(Ljava/lang/String;)V
    .locals 0
    .param p1, "balance"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->balance:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->extra:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setPartyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "partyName"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->partyName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleId"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->roleId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleLevel"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->roleLevel:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleName"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->roleName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->serverId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->serverName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .locals 0
    .param p1, "vip"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->vip:Ljava/lang/String;

    .line 57
    return-void
.end method
