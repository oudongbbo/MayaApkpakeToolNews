.class public Lcom/maya/sdk/m/receiver/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field push_icon_url_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/m/receiver/PushReceiver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/receiver/PushReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/maya/sdk/m/receiver/PushReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/receiver/PushReceiver;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/graphics/Bitmap;
    .param p5, "x5"    # Landroid/graphics/Bitmap;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;

    .line 38
    invoke-direct/range {p0 .. p7}, Lcom/maya/sdk/m/receiver/PushReceiver;->pushInPicture(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/maya/sdk/m/receiver/PushReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/receiver/PushReceiver;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/graphics/Bitmap;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/maya/sdk/m/receiver/PushReceiver;->pushInText(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static canrun(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/maya/sdk/m/receiver/PushReceiver;->getPushTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p0}, Lcom/maya/sdk/m/model/MConfigManager;->getPushDelayTime(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-lez v4, :cond_0

    .line 450
    invoke-static {p0}, Lcom/maya/sdk/m/receiver/PushReceiver;->setPushTime(Landroid/content/Context;)V

    .line 451
    return v0

    .line 453
    :cond_0
    invoke-static {p0}, Lcom/maya/sdk/m/model/MConfigManager;->getIsPushDelay(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 454
    return v0

    .line 456
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getIdByTime()I
    .locals 3

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "time":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 424
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 428
    :cond_0
    const/16 v1, 0x64

    return v1
.end method

.method private getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 466
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 469
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 460
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 463
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPushTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 439
    const-string v0, "pref_push_time"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 440
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "push_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 48
    const-string v0, "PushReceiver"

    invoke-static {v0, p1}, Lcom/maya/sdk/m/utils/MLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private push(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    const-string v0, "\u8c03\u7528push"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->canrun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-string v0, "\u63a8\u9001\u65f6\u95f4\u672a\u5230"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V

    .line 122
    return-void

    .line 125
    :cond_0
    const-string v0, "\u53d1\u8d77Push \u8bf7\u6c42"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/maya/sdk/m/http/MReqManager;

    invoke-direct {v0, p1}, Lcom/maya/sdk/m/http/MReqManager;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, "requestManager":Lcom/maya/sdk/m/http/MReqManager;
    const/4 v1, 0x0

    new-instance v2, Lcom/maya/sdk/m/receiver/PushReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/maya/sdk/m/receiver/PushReceiver$1;-><init>(Lcom/maya/sdk/m/receiver/PushReceiver;Lcom/maya/sdk/m/http/MReqManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqManager;->requestPush(ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 170
    return-void
.end method

.method private pushInPicture(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "bigPic"    # Landroid/graphics/Bitmap;
    .param p5, "icon"    # Landroid/graphics/Bitmap;
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "pName"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 358
    .local v0, "manager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 359
    .local v1, "pictureStyle":Landroid/app/Notification$BigPictureStyle;
    invoke-virtual {v1, p2}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 360
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v2, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2, p5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 362
    iget v3, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->push_icon_url_id:I

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 363
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 364
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 365
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 366
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 367
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 368
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 369
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 370
    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    if-eqz p7, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, p7}, Lcom/maya/sdk/framework/utils/CommonUtil;->checkPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 371
    iget-object v5, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 372
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 373
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 374
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 375
    :cond_0
    if-eqz p6, :cond_1

    const-string v5, ""

    invoke-virtual {v5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 376
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 377
    .restart local v5    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 378
    .restart local v3    # "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 382
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 383
    .local v3, "notification":Landroid/app/Notification;
    invoke-virtual {v0, p1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 384
    return-void
.end method

.method private pushInText(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "pName"    # Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 389
    .local v0, "manager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 390
    .local v1, "textStyle":Landroid/app/Notification$BigTextStyle;
    invoke-virtual {v1, p2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    .line 392
    invoke-virtual {v2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 393
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    .local v2, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2, p4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 395
    iget v3, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->push_icon_url_id:I

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 396
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 397
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 398
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 399
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 400
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 401
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 402
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 403
    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    if-eqz p6, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, p6}, Lcom/maya/sdk/framework/utils/CommonUtil;->checkPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    iget-object v5, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 405
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 406
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 407
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 408
    :cond_0
    if-eqz p5, :cond_1

    const-string v5, ""

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    .restart local v5    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 411
    .restart local v3    # "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 414
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 415
    .local v3, "notification":Landroid/app/Notification;
    invoke-virtual {v0, p1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 416
    return-void
.end method

.method public static setPushTime(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 432
    const-string v0, "pref_push_time"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 433
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 434
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "push_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 435
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    return-void
.end method

.method private startPush(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 251
    move-object/from16 v0, p1

    const-string v1, "PushReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start push:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/m/utils/MLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "push_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 254
    .local v1, "push_id":I
    const-string v2, "push_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 255
    .local v12, "push_title":Ljava/lang/String;
    const-string v2, "push_desc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 256
    .local v13, "push_desc":Ljava/lang/String;
    const-string v2, "push_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 257
    .local v14, "push_type":I
    const-string v2, "dst_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 258
    .local v15, "dst_url":Ljava/lang/String;
    const-string v2, "icon_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 259
    .local v11, "icon_url":Ljava/lang/String;
    const-string v2, "img_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 260
    .local v16, "img_url":Ljava/lang/String;
    const-string v2, "package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 264
    .local v17, "pckName":Ljava/lang/String;
    move-object/from16 v10, p0

    iget-object v2, v10, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    .line 266
    .local v18, "defaultIcon":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    new-instance v9, Lcom/maya/sdk/m/receiver/PushReceiver$2;

    move-object v2, v9

    move-object/from16 v3, p0

    move v4, v1

    move v5, v14

    move-object v6, v12

    move-object v7, v13

    move-object v8, v15

    move-object v0, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v16

    move-object/from16 v19, v15

    move-object v15, v11

    .end local v11    # "icon_url":Ljava/lang/String;
    .local v15, "icon_url":Ljava/lang/String;
    .local v19, "dst_url":Ljava/lang/String;
    move-object/from16 v11, v18

    invoke-direct/range {v2 .. v11}, Lcom/maya/sdk/m/receiver/PushReceiver$2;-><init>(Lcom/maya/sdk/m/receiver/PushReceiver;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v15, v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->downLoadBitmap(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 291
    .end local v19    # "dst_url":Ljava/lang/String;
    .restart local v11    # "icon_url":Ljava/lang/String;
    .local v15, "dst_url":Ljava/lang/String;
    :cond_0
    move-object/from16 v19, v15

    move-object v15, v11

    .end local v11    # "icon_url":Ljava/lang/String;
    .local v15, "icon_url":Ljava/lang/String;
    .restart local v19    # "dst_url":Ljava/lang/String;
    const-string v9, ""

    move-object/from16 v2, p0

    move v3, v1

    move v4, v14

    move-object/from16 v5, v18

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v8, v19

    move-object/from16 v10, v16

    invoke-virtual/range {v2 .. v10}, Lcom/maya/sdk/m/receiver/PushReceiver;->showPushNotice(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void
.end method


# virtual methods
.method public handlePushSuccess(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
    .locals 13
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/m/interfaces/MsdkCallback;

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "push_id":I
    const-string v1, ""

    .line 197
    .local v1, "push_title":Ljava/lang/String;
    const-string v2, ""

    .line 198
    .local v2, "push_desc":Ljava/lang/String;
    const/4 v3, 0x2

    .line 199
    .local v3, "push_type":I
    const-string v4, ""

    .line 200
    .local v4, "dst_url":Ljava/lang/String;
    const-string v5, ""

    .line 201
    .local v5, "icon_url":Ljava/lang/String;
    const-string v6, ""

    .line 202
    .local v6, "img_url":Ljava/lang/String;
    const-string v7, ""

    .line 207
    .local v7, "package_name":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "data"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 209
    .local v8, "data":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_0

    .line 211
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 212
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 213
    .local v10, "pushData":Lorg/json/JSONObject;
    const-string v11, "id"

    invoke-direct {p0, v10, v11}, Lcom/maya/sdk/m/receiver/PushReceiver;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v11

    move v0, v11

    .line 214
    const-string v11, "push_title"

    invoke-direct {p0, v10, v11}, Lcom/maya/sdk/m/receiver/PushReceiver;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    .line 215
    const-string v11, "push_desc"

    invoke-direct {p0, v10, v11}, Lcom/maya/sdk/m/receiver/PushReceiver;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 216
    const-string v11, "push_type"

    invoke-direct {p0, v10, v11}, Lcom/maya/sdk/m/receiver/PushReceiver;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move v3, v11

    .line 217
    const-string v11, "dst_url"

    invoke-direct {p0, v10, v11}, Lcom/maya/sdk/m/receiver/PushReceiver;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 218
    const-string v11, "icon_url"

    invoke-direct {p0, v10, v11}, Lcom/maya/sdk/m/receiver/PushReceiver;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 219
    const-string v11, "img_url"

    invoke-direct {p0, v10, v11}, Lcom/maya/sdk/m/receiver/PushReceiver;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 220
    const-string v11, "package_name"

    invoke-direct {p0, v10, v11}, Lcom/maya/sdk/m/receiver/PushReceiver;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 224
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 225
    .local v11, "result":Landroid/os/Bundle;
    const-string v12, "push_id"

    invoke-virtual {v11, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v12, "push_title"

    invoke-virtual {v11, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v12, "push_desc"

    invoke-virtual {v11, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v12, "push_type"

    invoke-virtual {v11, v12, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    const-string v12, "dst_url"

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v12, "icon_url"

    invoke-virtual {v11, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v12, "img_url"

    invoke-virtual {v11, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v12, "package_name"

    invoke-virtual {v11, v12, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, v11}, Lcom/maya/sdk/m/receiver/PushReceiver;->startPush(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v11    # "result":Landroid/os/Bundle;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 243
    .end local v8    # "data":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .end local v10    # "pushData":Lorg/json/JSONObject;
    :cond_0
    goto :goto_1

    .line 240
    :catch_0
    move-exception v8

    .line 241
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    const-string v9, "\u89e3\u6790\u63a8\u9001\u6570\u636e\u65f6\u53d1\u751f\u9519\u8bef."

    invoke-interface {p2, v9}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    .line 246
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 179
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 181
    .local v1, "state":I
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "msg":Ljava/lang/String;
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_0

    .line 183
    invoke-interface {p2, p1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {p2, v1, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    .end local v1    # "state":I
    .end local v2    # "msg":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    const/4 v1, -0x1

    const-string v2, "\u63a8\u9001\u6570\u636e\u89e3\u6790\u9519\u8bef"

    invoke-interface {p2, v1, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 54
    iput-object p1, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    const-string v1, "maya_floatbutton_logo"

    const-string v2, "drawable"

    invoke-static {v1, v2, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->push_icon_url_id:I

    .line 60
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:ACTION_BOOT_COMPLETED"

    invoke-direct {p0, v1}, Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->push(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 66
    :cond_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:ACTION_BOOT_COMPLETED"

    invoke-direct {p0, v1}, Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->push(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 72
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    const-string v1, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:ACTION_USER_PRESENT"

    invoke-direct {p0, v1}, Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->push(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 78
    :cond_2
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 104
    :cond_3
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    const-string v1, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:android.intent.category.LAUNCHER"

    invoke-direct {p0, v1}, Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->push(Landroid/content/Context;)V

    goto :goto_2

    .line 108
    :cond_4
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 110
    const-string v1, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p0, v1}, Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->push(Landroid/content/Context;)V

    goto :goto_2

    .line 80
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V

    .line 82
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 83
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 84
    .local v2, "wifiState":Landroid/net/NetworkInfo$State;
    const/4 v3, 0x0

    .line 86
    .local v3, "mobileState":Landroid/net/NetworkInfo$State;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 87
    .local v4, "wifiInfo":Landroid/net/NetworkInfo;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 89
    .local v5, "mobileInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_6

    .line 90
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 93
    :cond_6
    if-eqz v5, :cond_7

    .line 94
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 97
    :cond_7
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v2, :cond_8

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v3, :cond_8

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "wifiState":Landroid/net/NetworkInfo$State;
    .end local v3    # "mobileState":Landroid/net/NetworkInfo$State;
    .end local v4    # "wifiInfo":Landroid/net/NetworkInfo;
    .end local v5    # "mobileInfo":Landroid/net/NetworkInfo;
    goto :goto_1

    .line 101
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "wifiState":Landroid/net/NetworkInfo$State;
    .restart local v3    # "mobileState":Landroid/net/NetworkInfo$State;
    .restart local v4    # "wifiInfo":Landroid/net/NetworkInfo;
    .restart local v5    # "mobileInfo":Landroid/net/NetworkInfo;
    :cond_8
    const-string v6, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:CONNECTIVITY_ACTION"

    invoke-direct {p0, v6}, Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->push(Landroid/content/Context;)V

    .line 104
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "wifiState":Landroid/net/NetworkInfo$State;
    .end local v3    # "mobileState":Landroid/net/NetworkInfo$State;
    .end local v4    # "wifiInfo":Landroid/net/NetworkInfo;
    .end local v5    # "mobileInfo":Landroid/net/NetworkInfo;
    :goto_1
    nop

    .line 114
    :cond_9
    :goto_2
    return-void
.end method

.method public showPushNotice(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "lagerIcon"    # Landroid/graphics/Bitmap;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "pName"    # Ljava/lang/String;
    .param p8, "bigPicUrl"    # Ljava/lang/String;

    .line 306
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/maya/sdk/m/receiver/PushReceiver;->showPushNotice(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    goto :goto_0

    .line 309
    :pswitch_1
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/maya/sdk/m/receiver/PushReceiver;->showPushNotice(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    nop

    .line 321
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showPushNotice(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "lagerIcon"    # Landroid/graphics/Bitmap;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "pName"    # Ljava/lang/String;
    .param p7, "bigPicUrl"    # Ljava/lang/String;

    .line 325
    move-object/from16 v0, p7

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Lcom/maya/sdk/m/receiver/PushReceiver$3;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p2

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/maya/sdk/m/receiver/PushReceiver$3;-><init>(Lcom/maya/sdk/m/receiver/PushReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->downLoadBitmap(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 350
    :cond_0
    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/m/receiver/PushReceiver;->pushInText(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void
.end method
