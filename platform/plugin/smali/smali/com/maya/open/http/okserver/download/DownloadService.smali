.class public Lcom/maya/open/http/okserver/download/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


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
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/open/http/okserver/download/DownloadService;->isServiceRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/maya/open/http/okserver/download/DownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    :cond_0
    sget-object v1, Lcom/maya/open/http/okserver/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/maya/open/http/okserver/download/DownloadManager;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/maya/open/http/okserver/download/DownloadManager;->getInstance()Lcom/maya/open/http/okserver/download/DownloadManager;

    move-result-object v1

    sput-object v1, Lcom/maya/open/http/okserver/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/maya/open/http/okserver/download/DownloadManager;

    .line 38
    :cond_1
    sget-object v1, Lcom/maya/open/http/okserver/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/maya/open/http/okserver/download/DownloadManager;

    return-object v1
.end method

.method public static isServiceRunning(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "isRunning":Z
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 44
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 46
    :cond_0
    nop

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 47
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/maya/open/http/okserver/download/DownloadService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return v0

    .line 45
    :cond_3
    :goto_2
    return v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
