.class public Lcom/maya/sdk/framework/user/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# instance fields
.field private final accountDir:Ljava/lang/String;

.field private final accountFile:Ljava/lang/String;

.field private final accountVisitorFile:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ".com.maya.system"

    iput-object v0, p0, Lcom/maya/sdk/framework/user/AccountManager;->accountDir:Ljava/lang/String;

    .line 26
    const-string v0, "system.config"

    iput-object v0, p0, Lcom/maya/sdk/framework/user/AccountManager;->accountFile:Ljava/lang/String;

    .line 27
    const-string v0, "visitor.config"

    iput-object v0, p0, Lcom/maya/sdk/framework/user/AccountManager;->accountVisitorFile:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/maya/sdk/framework/user/AccountManager;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private getAccountDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".com.maya.system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".com.maya.system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAccountFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    const-string v0, "system.config"

    .line 69
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    invoke-static {p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 73
    .local v1, "pid":I
    const/16 v2, 0x68

    if-eq v1, v2, :cond_1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system.config."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u5230\u7684\u6587\u4ef6\u540d:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 82
    return-object v0

    .line 75
    :cond_1
    :goto_0
    const-string v0, "system.config.101"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u81ea\u8425\u5e73\u53f0\u83b7\u53d6\u5230\u7684\u6587\u4ef6\u540d:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 77
    return-object v0

    .line 86
    .end local v1    # "pid":I
    :cond_2
    const-string v1, "system.config"

    return-object v1
.end method

.method private getAccountVisitorFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 320
    const-string v0, "visitor.config"

    return-object v0
.end method


# virtual methods
.method public addAccountToFile(Landroid/content/Context;Lcom/maya/sdk/framework/user/UserInfoBean;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uinfo"    # Lcom/maya/sdk/framework/user/UserInfoBean;

    .line 146
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 151
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_0
    const/4 v2, 0x0

    .line 156
    .local v2, "hasAccount":Z
    move v3, v2

    const/4 v2, 0x0

    .local v2, "i":I
    .local v3, "hasAccount":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 157
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v4}, Lcom/maya/sdk/framework/user/UserInfoBean;->getUname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/maya/sdk/framework/user/UserInfoBean;->getUname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    const/4 v3, 0x1

    .line 162
    invoke-virtual {p2}, Lcom/maya/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 165
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {p2}, Lcom/maya/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/user/UserInfoBean;->setPwd(Ljava/lang/String;)V

    .line 167
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {p2}, Lcom/maya/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/user/UserInfoBean;->setVname(Ljava/lang/String;)V

    .line 168
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {p2}, Lcom/maya/sdk/framework/user/UserInfoBean;->getPlatform()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/user/UserInfoBean;->setPlatform(Ljava/lang/String;)V

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {p2}, Lcom/maya/sdk/framework/user/UserInfoBean;->isAdult()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/user/UserInfoBean;->setAdult(Z)V

    .line 170
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {p2}, Lcom/maya/sdk/framework/user/UserInfoBean;->isAuth()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/user/UserInfoBean;->setAuth(Z)V

    .line 156
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_3
    if-nez v3, :cond_4

    .line 176
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v3    # "hasAccount":Z
    :cond_4
    :goto_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 182
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    new-instance v3, Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v1, v3

    .line 184
    .local v1, "writer":Ljava/io/FileWriter;
    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/user/AccountManager;->userListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "json":Ljava/lang/String;
    const-string v4, ".com.maya.system"

    invoke-static {v3, v4}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1    # "writer":Ljava/io/FileWriter;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "json":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 192
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method public addVisitorAccountToFile(Landroid/content/Context;Lcom/maya/sdk/framework/user/UserInfoBean;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uinfo"    # Lcom/maya/sdk/framework/user/UserInfoBean;

    .line 382
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromVisitorFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 384
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    if-nez v0, :cond_1

    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 387
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountVisitorFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 396
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    new-instance v2, Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 400
    .local v2, "writer":Ljava/io/FileWriter;
    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/user/AccountManager;->userVisitorListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "json":Ljava/lang/String;
    const-string v4, ".com.maya.system"

    invoke-static {v3, v4}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "writer":Ljava/io/FileWriter;
    .end local v3    # "json":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 409
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 391
    :cond_1
    return-void
.end method

.method public cleanAccountInfoCache(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 502
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->cleanAccountNormal(Landroid/content/Context;)V

    .line 503
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->cleanAccountVistor(Landroid/content/Context;)V

    .line 504
    return-void
.end method

.method public cleanAccountNormal(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 297
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 298
    .local v0, "accountFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 301
    :cond_0
    return-void
.end method

.method public cleanAccountVistor(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 492
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountVisitorFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 493
    .local v0, "accountVistorFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 496
    :cond_0
    return-void
.end method

.method public delAccountFromFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uname"    # Ljava/lang/String;

    .line 195
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    if-nez v0, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v1, "saveList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maya/sdk/framework/user/UserInfoBean;

    .line 204
    .local v3, "userinfo":Lcom/maya/sdk/framework/user/UserInfoBean;
    invoke-virtual {v3}, Lcom/maya/sdk/framework/user/UserInfoBean;->getUname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 206
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v3    # "userinfo":Lcom/maya/sdk/framework/user/UserInfoBean;
    :cond_1
    goto :goto_0

    .line 211
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 212
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    invoke-virtual {p0, v1}, Lcom/maya/sdk/framework/user/AccountManager;->userListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "json":Ljava/lang/String;
    new-instance v4, Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 215
    .local v4, "writer":Ljava/io/FileWriter;
    const-string v5, ".com.maya.system"

    invoke-static {v3, v5}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "writer":Ljava/io/FileWriter;
    :cond_3
    goto :goto_1

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 222
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public delVisitorAccountFromFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uname"    # Ljava/lang/String;

    .line 412
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountVisitorFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 413
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 416
    :cond_0
    return-void
.end method

.method public getAccountFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 304
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getAccountVisitorFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 324
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountVisitorFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromFileBase(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    return-object v0
.end method

.method public getAccountsFromFileBase(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p2, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 102
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 103
    return-object v2

    .line 105
    :cond_0
    const-string v1, ""

    .line 106
    .local v1, "json":Ljava/lang/String;
    move-object v3, v2

    .line 108
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 109
    const/4 v4, 0x0

    .line 110
    .local v4, "tempString":Ljava/lang/String;
    const/4 v5, 0x1

    .line 111
    .local v5, "line":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_1

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 113
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v5    # "line":I
    nop

    .line 121
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :goto_1
    goto :goto_2

    .line 122
    :catch_0
    move-exception v4

    .line 123
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4    # "e1":Ljava/lang/Exception;
    goto :goto_1

    .line 119
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 116
    :catch_1
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_2

    .line 121
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 127
    :cond_2
    :goto_2
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    return-object v2

    .line 131
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    :try_start_4
    const-string v4, ".com.maya.system"

    invoke-static {v1, v4}, Lcom/maya/sdk/framework/encrypt/CodeManager;->decodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "json_":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lcom/maya/sdk/framework/user/AccountManager;->stringToUserList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v2, v5

    .line 138
    .end local v4    # "json_":Ljava/lang/String;
    goto :goto_3

    .line 136
    :catch_2
    move-exception v4

    .line 137
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v2

    .line 119
    .end local v2    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    :goto_4
    if-eqz v3, :cond_4

    .line 121
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 124
    goto :goto_5

    .line 122
    :catch_3
    move-exception v4

    .line 123
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v4    # "e1":Ljava/lang/Exception;
    :cond_4
    :goto_5
    throw v2
.end method

.method public getAccountsFromVisitorFile(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation

    .line 336
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountVisitorFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 338
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 339
    return-object v2

    .line 341
    :cond_0
    const-string v1, ""

    .line 342
    .local v1, "json":Ljava/lang/String;
    move-object v3, v2

    .line 344
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 345
    const/4 v4, 0x0

    .line 346
    .local v4, "tempString":Ljava/lang/String;
    const/4 v5, 0x1

    .line 347
    .local v5, "line":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_1

    .line 348
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 349
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v5    # "line":I
    nop

    .line 357
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    :goto_1
    goto :goto_2

    .line 358
    :catch_0
    move-exception v4

    .line 359
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4    # "e1":Ljava/lang/Exception;
    goto :goto_1

    .line 355
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 352
    :catch_1
    move-exception v4

    .line 353
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_2

    .line 357
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 363
    :cond_2
    :goto_2
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    return-object v2

    .line 367
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v2, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    :try_start_4
    const-string v4, ".com.maya.system"

    invoke-static {v1, v4}, Lcom/maya/sdk/framework/encrypt/CodeManager;->decodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "json_":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/maya/sdk/framework/user/AccountManager;->stringToVisitorUserList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v2, v5

    .line 374
    .end local v4    # "json_":Ljava/lang/String;
    goto :goto_3

    .line 372
    :catch_2
    move-exception v4

    .line 373
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v2

    .line 355
    .end local v2    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    :goto_4
    if-eqz v3, :cond_4

    .line 357
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 360
    goto :goto_5

    .line 358
    :catch_3
    move-exception v4

    .line 359
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    .end local v4    # "e1":Ljava/lang/Exception;
    :cond_4
    :goto_5
    throw v2
.end method

.method public getSDPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "dirFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_1
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 61
    .end local v0    # "dirFile":Ljava/io/File;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public stringToUserList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---->UserInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 238
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "obj":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, "user_lists":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 244
    .local v2, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 245
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 246
    .local v4, "user_data":Lorg/json/JSONObject;
    new-instance v5, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-direct {v5}, Lcom/maya/sdk/framework/user/UserInfoBean;-><init>()V

    .line 247
    .local v5, "user_info":Lcom/maya/sdk/framework/user/UserInfoBean;
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setUname(Ljava/lang/String;)V

    .line 248
    const-string v6, "vname"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setVname(Ljava/lang/String;)V

    .line 249
    const-string v6, "pwd"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/maya/sdk/framework/encrypt/CodeManager;->decodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setPwd(Ljava/lang/String;)V

    .line 250
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    .end local v3    # "i":I
    .end local v4    # "user_data":Lorg/json/JSONObject;
    .end local v5    # "user_info":Lcom/maya/sdk/framework/user/UserInfoBean;
    :cond_0
    return-object v1

    .line 253
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "user_lists":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    .end local v2    # "array":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    const/4 v1, 0x0

    return-object v1
.end method

.method public stringToVisitorUserList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---->UserInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 432
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "obj":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v1, "user_lists":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 438
    .local v2, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 439
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 440
    .local v4, "user_data":Lorg/json/JSONObject;
    new-instance v5, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-direct {v5}, Lcom/maya/sdk/framework/user/UserInfoBean;-><init>()V

    .line 441
    .local v5, "user_info":Lcom/maya/sdk/framework/user/UserInfoBean;
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setUname(Ljava/lang/String;)V

    .line 442
    const-string v6, "vname"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setVname(Ljava/lang/String;)V

    .line 443
    const-string v6, "pwd"

    .line 444
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/maya/sdk/framework/user/AccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountVisitorFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/maya/sdk/framework/encrypt/CodeManager;->decodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 443
    invoke-virtual {v5, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setPwd(Ljava/lang/String;)V

    .line 445
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 447
    .end local v3    # "i":I
    .end local v4    # "user_data":Lorg/json/JSONObject;
    .end local v5    # "user_info":Lcom/maya/sdk/framework/user/UserInfoBean;
    :cond_0
    return-object v1

    .line 448
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "user_lists":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    .end local v2    # "array":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 450
    const/4 v1, 0x0

    return-object v1
.end method

.method public userListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 271
    .local p1, "user_lists":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 272
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 273
    .local v1, "obj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 275
    .local v2, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 276
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 277
    .local v4, "child":Lorg/json/JSONObject;
    const-string v5, "uname"

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->getUname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v5, "vname"

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v5, "pwd"

    .line 280
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/maya/sdk/framework/user/AccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 279
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    .end local v3    # "i":I
    .end local v4    # "child":Lorg/json/JSONObject;
    :cond_0
    const-string v3, "user"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 288
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "array":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    return-object v0

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method

.method public userVisitorListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 466
    .local p1, "user_lists":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 467
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 468
    .local v1, "obj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 470
    .local v2, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 471
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 472
    .local v4, "child":Lorg/json/JSONObject;
    const-string v5, "uname"

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->getUname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    const-string v5, "vname"

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string v5, "pwd"

    .line 475
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/maya/sdk/framework/user/AccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountVisitorFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 474
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 470
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    .end local v3    # "i":I
    .end local v4    # "child":Lorg/json/JSONObject;
    :cond_0
    const-string v3, "user"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 483
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "array":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 485
    return-object v0

    .line 481
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method
