.class public Lcom/maya/sdk/m/model/bean/MAppBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private debug:Z

.field private gid:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private sdkVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGid()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MAppBean;->gid:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MAppBean;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MAppBean;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVer()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MAppBean;->sdkVer:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/maya/sdk/m/model/bean/MAppBean;->debug:Z

    return v0
.end method

.method public setDebug(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/maya/sdk/m/model/bean/MAppBean;->debug:Z

    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MAppBean;->gid:Ljava/lang/String;

    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MAppBean;->mid:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MAppBean;->pid:Ljava/lang/String;

    return-void
.end method

.method public setSdkVer(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MAppBean;->sdkVer:Ljava/lang/String;

    return-void
.end method
