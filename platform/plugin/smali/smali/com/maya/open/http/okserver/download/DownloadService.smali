.class public Lcom/maya/open/http/okserver/download/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static DOWNLOAD_MANAGER:Lcom/maya/open/http/okserver/download/DownloadManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static getDownloadManager()Lcom/maya/open/http/okserver/download/DownloadManager;
    .locals 3

    .line 35
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/maya/open/http/okserver/download/DownloadService;->isServiceRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/maya/open/http/okserver/download/DownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    :cond_0
    sget-object v0, Lcom/maya/open/http/okserver/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/maya/open/http/okserver/download/DownloadManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/maya/open/http/okserver/download/DownloadManager;->getInstance()Lcom/maya/open/http/okserver/download/DownloadManager;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okserver/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/maya/open/http/okserver/download/DownloadManager;

    .line 38
    :cond_1
    sget-object v0, Lcom/maya/open/http/okserver/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/maya/open/http/okserver/download/DownloadManager;

    return-object v0
.end method

.method public static isServiceRunning(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "activity"

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 45
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 47
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/maya/open/http/okserver/download/DownloadService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
