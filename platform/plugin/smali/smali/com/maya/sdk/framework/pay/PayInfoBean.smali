.class public Lcom/maya/sdk/framework/pay/PayInfoBean;
.super Ljava/lang/Object;
.source "PayInfoBean.java"


# instance fields
.field private money:Ljava/lang/String;

.field private order_ext:Ljava/lang/String;

.field private order_ext_m:Ljava/lang/String;

.field private order_name:Ljava/lang/String;

.field private order_no:Ljava/lang/String;

.field private order_no_m:Ljava/lang/String;

.field private role_id:Ljava/lang/String;

.field private role_level:Ljava/lang/String;

.field private role_name:Ljava/lang/String;

.field private server_id:Ljava/lang/String;

.field private server_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyToAFromB(Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/pay/PayInfoBean;)V
    .locals 1
    .param p0, "a"    # Lcom/maya/sdk/framework/pay/PayInfoBean;
    .param p1, "b"    # Lcom/maya/sdk/framework/pay/PayInfoBean;

    .line 132
    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getMoney()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setMoney(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getOrder_no()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_no(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getOrder_ext_m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_ext_m(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getOrder_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_name(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getOrder_no()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_no(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getOrder_no_m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_no_m(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getRole_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_id(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getRole_level()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_level(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getRole_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_name(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getServer_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setServer_id(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getServer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setServer_name(Ljava/lang/String;)V

    .line 143
    return-void
.end method


# virtual methods
.method public getMoney()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_ext()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_ext:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_ext_m()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_ext_m:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_name()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_no()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_no:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_no_m()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_no_m:Ljava/lang/String;

    return-object v0
.end method

.method public getRole_id()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->role_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRole_level()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->role_level:Ljava/lang/String;

    return-object v0
.end method

.method public getRole_name()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->role_name:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_id()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->server_id:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_name()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->server_name:Ljava/lang/String;

    return-object v0
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0
    .param p1, "money"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->money:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setOrder_ext(Ljava/lang/String;)V
    .locals 0
    .param p1, "order_ext"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_ext:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setOrder_ext_m(Ljava/lang/String;)V
    .locals 0
    .param p1, "order_ext_m"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_ext_m:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setOrder_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "order_name"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setOrder_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "order_no"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_no:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setOrder_no_m(Ljava/lang/String;)V
    .locals 0
    .param p1, "order_no_m"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_no_m:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setRole_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "role_id"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->role_id:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setRole_level(Ljava/lang/String;)V
    .locals 0
    .param p1, "role_level"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->role_level:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setRole_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "role_name"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->role_name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setServer_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "server_id"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->server_id:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setServer_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "server_name"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->server_name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayInfoBean [money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->money:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", order_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", order_no_m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_no_m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", order_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", order_ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", order_ext_m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->order_ext_m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", role_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->role_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", role_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->role_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", role_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->role_level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", server_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->server_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", server_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayInfoBean;->server_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
