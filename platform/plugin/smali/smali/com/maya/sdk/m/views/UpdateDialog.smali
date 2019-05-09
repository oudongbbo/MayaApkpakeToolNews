.class public Lcom/maya/sdk/m/views/UpdateDialog;
.super Landroid/app/Dialog;
.source "UpdateDialog.java"


# static fields
.field public static notificationId:I


# instance fields
.field UIhandler:Landroid/os/Handler;

.field private isForceUpdate:Z

.field private loadingProgress:I

.field private loading_view:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private netType:Ljava/lang/String;

.field private nm:Landroid/app/NotificationManager;

.field private notice:Ljava/lang/String;

.field private notification:Landroid/app/Notification;

.field private switch_on:Z

.field private update_hide:Landroid/widget/Button;

.field private update_notice:Landroid/widget/TextView;

.field private update_progress:Lcom/maya/sdk/m/views/common/LoadingLineWithText;

.field private update_size:Landroid/widget/TextView;

.field private update_speed:Landroid/widget/TextView;

.field private update_start:Landroid/widget/Button;

.field private url:Ljava/lang/String;

.field private views:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/16 v0, 0x3e8

    sput v0, Lcom/maya/sdk/m/views/UpdateDialog;->notificationId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->switch_on:Z

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    .line 195
    new-instance v0, Lcom/maya/sdk/m/views/UpdateDialog$3;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/views/UpdateDialog$3;-><init>(Lcom/maya/sdk/m/views/UpdateDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->UIhandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isForceUpdate"    # Z
    .param p3, "notice"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->switch_on:Z

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    .line 195
    new-instance v0, Lcom/maya/sdk/m/views/UpdateDialog$3;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/views/UpdateDialog$3;-><init>(Lcom/maya/sdk/m/views/UpdateDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->UIhandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    .line 73
    iput-boolean p2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->isForceUpdate:Z

    .line 74
    iput-object p4, p0, Lcom/maya/sdk/m/views/UpdateDialog;->url:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notice:Ljava/lang/String;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/m/views/UpdateDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-boolean v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->switch_on:Z

    return v0
.end method

.method static synthetic access$002(Lcom/maya/sdk/m/views/UpdateDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/maya/sdk/m/views/UpdateDialog;->switch_on:Z

    return p1
.end method

.method static synthetic access$100(Lcom/maya/sdk/m/views/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/views/UpdateDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/maya/sdk/m/views/UpdateDialog;)Lcom/maya/sdk/m/views/common/LoadingLineWithText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_progress:Lcom/maya/sdk/m/views/common/LoadingLineWithText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/maya/sdk/m/views/UpdateDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/maya/sdk/m/views/UpdateDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_start:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/m/views/UpdateDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/maya/sdk/m/views/UpdateDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-boolean v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->isForceUpdate:Z

    return v0
.end method

.method static synthetic access$500(Lcom/maya/sdk/m/views/UpdateDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    invoke-direct {p0}, Lcom/maya/sdk/m/views/UpdateDialog;->back2Launcher()V

    return-void
.end method

.method static synthetic access$600(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/maya/sdk/m/views/UpdateDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->loadingProgress:I

    return v0
.end method

.method static synthetic access$702(Lcom/maya/sdk/m/views/UpdateDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lcom/maya/sdk/m/views/UpdateDialog;->loadingProgress:I

    return p1
.end method

.method static synthetic access$800(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_size:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_speed:Landroid/widget/TextView;

    return-object v0
.end method

.method private back2Launcher()V
    .locals 2

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "backHome":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 436
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private sendLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 442
    const-string v0, "maya_UpdateDialog->"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method


# virtual methods
.method public checkDownload(Ljava/lang/String;)V
    .locals 4
    .param p1, "down_url"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getNetWorkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    .line 299
    const-string v0, "NO_NETWORK"

    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNKNOWN"

    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    const-string v0, "WIFI"

    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/views/UpdateDialog;->startDownloadApk(Ljava/lang/String;)V

    goto :goto_1

    .line 310
    :cond_1
    new-instance v0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, "mMaterialDialog":Lcom/maya/sdk/framework/view/dialog/MaterialDialog;
    const-string v1, "\u4e0b\u8f7d\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v1

    const-string v2, "\u60a8\u5f53\u524d\u51fa\u4e8e\u79fb\u52a8\u7f51\u7edc\uff0c\u7ee7\u7eed\u4e0b\u8f7d\u6e38\u620f\u5417?"

    .line 313
    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v1

    const-string v2, "\u7ee7\u7eed"

    new-instance v3, Lcom/maya/sdk/m/views/UpdateDialog$5;

    invoke-direct {v3, p0, v0, p1}, Lcom/maya/sdk/m/views/UpdateDialog$5;-><init>(Lcom/maya/sdk/m/views/UpdateDialog;Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1, v2, v3}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/maya/sdk/m/views/UpdateDialog$4;

    invoke-direct {v3, p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog$4;-><init>(Lcom/maya/sdk/m/views/UpdateDialog;Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)V

    .line 320
    invoke-virtual {v1, v2, v3}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 326
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setCanceledOnTouchOutside(Z)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 327
    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->show()V

    goto :goto_1

    .line 301
    .end local v0    # "mMaterialDialog":Lcom/maya/sdk/framework/view/dialog/MaterialDialog;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    const-string v1, "\u5f53\u524d\u65e0\u7f51\u7edc"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    :goto_1
    return-void
.end method

.method public convertFileSize(J)Ljava/lang/String;
    .locals 9
    .param p1, "size"    # J

    .line 415
    const-wide/16 v0, 0x400

    .line 416
    .local v0, "kb":J
    const-wide/16 v2, 0x400

    mul-long v4, v0, v2

    .line 417
    .local v4, "mb":J
    mul-long v2, v2, v4

    .line 419
    .local v2, "gb":J
    cmp-long v6, p1, v2

    if-ltz v6, :cond_0

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v7, p1

    int-to-long v7, v7

    div-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "GB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 421
    :cond_0
    cmp-long v6, p1, v4

    if-ltz v6, :cond_1

    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v7, p1

    int-to-long v7, v7

    div-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "MB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 423
    :cond_1
    cmp-long v6, p1, v0

    if-ltz v6, :cond_2

    .line 424
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v7, p1

    int-to-long v7, v7

    div-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 426
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method initUpdateNotification()V
    .locals 9

    .line 153
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;

    .line 154
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    .line 155
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 157
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 158
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    const-string v1, "\u6e38\u620f\u66f4\u65b0"

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 159
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 160
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 164
    const-string v0, "maya_update_notification"

    const-string v1, "layout"

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 165
    .local v0, "notification_layout":I
    const-string v1, "update_icon"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 166
    .local v1, "update_icon":I
    const-string v2, "update_name"

    const-string v3, "id"

    iget-object v4, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 168
    .local v2, "update_name":I
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    .line 170
    iget-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->getAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 171
    iget-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 173
    iget-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/maya/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 175
    iget-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 176
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 177
    .local v4, "contentIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    iput-object v4, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGameId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGameMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "id":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u901a\u77e5\u680f\u4efb\u52a1ID\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/maya/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    .line 181
    const-string v7, "[a-zA-Z]"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 182
    const-string v7, "0"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-le v7, v8, :cond_0

    .line 184
    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 187
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/maya/sdk/m/views/UpdateDialog;->notificationId:I

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u542f\u52a8\u901a\u77e5\u680f\u8fdb\u5ea6\u6846:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/maya/sdk/m/views/UpdateDialog;->notificationId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/maya/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    .line 191
    iget-object v5, p0, Lcom/maya/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;

    sget v7, Lcom/maya/sdk/m/views/UpdateDialog;->notificationId:I

    iget-object v8, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    invoke-virtual {v5, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 193
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/maya/sdk/m/views/UpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maya_dialog_theme_main"

    const-string v2, "style"

    iget-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 85
    const-string v0, "maya_update_dialog_content"

    const-string v1, "layout"

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->setContentView(I)V

    .line 87
    const-string v0, "update_notice"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_notice:Landroid/widget/TextView;

    .line 88
    const-string v0, "update_size"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_size:Landroid/widget/TextView;

    .line 89
    const-string v0, "update_speed"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_speed:Landroid/widget/TextView;

    .line 90
    const-string v0, "update_start"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_start:Landroid/widget/Button;

    .line 91
    const-string v0, "update_hide"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_hide:Landroid/widget/Button;

    .line 92
    const-string v0, "update_progress"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_progress:Lcom/maya/sdk/m/views/common/LoadingLineWithText;

    .line 93
    const-string v0, "update_loadingview"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->loading_view:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_notice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_start:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/m/views/UpdateDialog$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/views/UpdateDialog$1;-><init>(Lcom/maya/sdk/m/views/UpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_hide:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/m/views/UpdateDialog$2;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/views/UpdateDialog$2;-><init>(Lcom/maya/sdk/m/views/UpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->setCanceledOnTouchOutside(Z)V

    .line 135
    iget-boolean v1, p0, Lcom/maya/sdk/m/views/UpdateDialog;->isForceUpdate:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 136
    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->setCancelable(Z)V

    .line 139
    :cond_1
    return-void
.end method

.method public startDownloadApk(Ljava/lang/String;)V
    .locals 5
    .param p1, "down_url"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->loading_view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->switch_on:Z

    .line 338
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->update_start:Landroid/widget/Button;

    const-string v1, "maya_update_stop"

    invoke-direct {p0, v1}, Lcom/maya/sdk/m/views/UpdateDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51c6\u5907\u4e0b\u8f7d\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/m/controller/UpdateManager;->getSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "targetPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    invoke-static {p1}, Lcom/maya/sdk/m/controller/UpdateManager;->getFileNameOfUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "down_name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "target":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5b58\u50a8\u4f4d\u7f6e\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/maya/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/maya/open/main/OpenDownloadUtils;->getInstance()Lcom/maya/open/main/OpenDownloadUtils;

    move-result-object v3

    new-instance v4, Lcom/maya/sdk/m/views/UpdateDialog$6;

    invoke-direct {v4, p0, p1, v1}, Lcom/maya/sdk/m/views/UpdateDialog$6;-><init>(Lcom/maya/sdk/m/views/UpdateDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1, p1, v4}, Lcom/maya/open/main/OpenDownloadUtils;->download(Ljava/lang/String;Ljava/lang/String;Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;)V

    .line 387
    .end local v1    # "down_name":Ljava/lang/String;
    .end local v2    # "target":Ljava/lang/String;
    goto :goto_0

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    const-string v2, "maya_update_fail"

    invoke-direct {p0, v2}, Lcom/maya/sdk/m/views/UpdateDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/m/controller/UpdateManager;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void
.end method

.method public stopDownload(Ljava/lang/String;)V
    .locals 6
    .param p1, "down_url"    # Ljava/lang/String;

    .line 396
    const-string v0, "\u6682\u505c\u4e0b\u8f7d"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "update_text"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 401
    .local v0, "update_text":I
    const-string v1, "update_progress"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 403
    .local v1, "update_progress":I
    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    const-string v3, "\u5df2\u6682\u505c"

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 404
    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    const/16 v3, 0x64

    iget v4, p0, Lcom/maya/sdk/m/views/UpdateDialog;->loadingProgress:I

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 405
    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 406
    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;

    sget v3, Lcom/maya/sdk/m/views/UpdateDialog;->notificationId:I

    iget-object v4, p0, Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 409
    .end local v0    # "update_text":I
    .end local v1    # "update_progress":I
    :cond_0
    invoke-static {}, Lcom/maya/open/main/OpenDownloadUtils;->getInstance()Lcom/maya/open/main/OpenDownloadUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/main/OpenDownloadUtils;->pause(Ljava/lang/String;)V

    .line 411
    return-void
.end method
