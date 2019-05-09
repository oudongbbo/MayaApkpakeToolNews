.class public Lcom/maya/sdk/s/core/model/bean/ExitGameBean;
.super Ljava/lang/Object;
.source "ExitGameBean.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "categoryName"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;
    .param p4, "downloadUrl"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->appName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->categoryName:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->iconUrl:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->downloadUrl:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->appName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryName"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->categoryName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->downloadUrl:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->iconUrl:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameBean [appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
