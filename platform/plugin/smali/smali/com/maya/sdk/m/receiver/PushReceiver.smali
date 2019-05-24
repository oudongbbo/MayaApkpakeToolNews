.class public Lcom/maya/sdk/m/receiver/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 460
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 358
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 359
    invoke-virtual {v1, p2}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 360
    new-instance p4, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    invoke-direct {p4, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 362
    iget p5, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->a:I

    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 363
    invoke-virtual {p4, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 364
    invoke-virtual {p4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 365
    invoke-virtual {p4, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string p2, ""

    .line 366
    invoke-virtual {p4, p2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 367
    invoke-virtual {p4, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/4 p2, 0x1

    .line 368
    invoke-virtual {p4, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const/4 p2, -0x1

    .line 369
    invoke-virtual {p4, p2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    const/high16 p2, 0x8000000

    const/4 p3, 0x0

    if-eqz p7, :cond_0

    const-string p5, ""

    .line 370
    invoke-virtual {p5, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    invoke-static {p5, p7}, Lcom/maya/sdk/framework/utils/CommonUtil;->checkPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 371
    iget-object p5, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    invoke-virtual {p5, p7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p5

    .line 372
    iget-object p6, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    invoke-static {p6, p3, p5, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 373
    invoke-virtual {p4, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    const-string p5, ""

    .line 375
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 376
    new-instance p5, Landroid/content/Intent;

    const-string p7, "android.intent.action.VIEW"

    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    invoke-direct {p5, p7, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 377
    iget-object p6, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    invoke-static {p6, p3, p5, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 378
    invoke-virtual {p4, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 382
    :cond_1
    :goto_0
    invoke-virtual {p4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 383
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 389
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 390
    invoke-virtual {v1, p2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    .line 392
    invoke-virtual {v2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 393
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    invoke-virtual {v2, p4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 395
    iget p4, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->a:I

    invoke-virtual {v2, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 396
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 397
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 398
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string p2, ""

    .line 399
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 400
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/4 p2, 0x1

    .line 401
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const/4 p2, -0x1

    .line 402
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    const/high16 p2, 0x8000000

    const/4 p3, 0x0

    if-eqz p6, :cond_0

    const-string p4, ""

    .line 403
    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    invoke-static {p4, p6}, Lcom/maya/sdk/framework/utils/CommonUtil;->checkPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 404
    iget-object p4, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p4, p6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    .line 405
    iget-object p5, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    invoke-static {p5, p3, p4, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 406
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    const-string p4, ""

    .line 408
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 409
    new-instance p4, Landroid/content/Intent;

    const-string p6, "android.intent.action.VIEW"

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-direct {p4, p6, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    iget-object p5, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    invoke-static {p5, p3, p4, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 411
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 414
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 415
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "pref_push_time"

    const/4 v1, 0x0

    .line 432
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 433
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "push_time"

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 435
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "PushReceiver"

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start push:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/m/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "push_id"

    .line 253
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "push_title"

    .line 254
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "push_desc"

    .line 255
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "push_type"

    .line 256
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "dst_url"

    .line 257
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "icon_url"

    .line 258
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "img_url"

    .line 259
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "package_name"

    .line 260
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 264
    iget-object p1, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz v11, :cond_0

    const-string v1, ""

    .line 266
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    new-instance v12, Lcom/maya/sdk/m/receiver/PushReceiver$2;

    move-object v1, v12

    move-object v2, p0

    move v3, v0

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/maya/sdk/m/receiver/PushReceiver$2;-><init>(Lcom/maya/sdk/m/receiver/PushReceiver;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v11, v12}, Lcom/maya/sdk/framework/utils/CommonUtil;->downLoadBitmap(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    const-string v8, ""

    move-object v1, p0

    move v2, v0

    move v3, v4

    move-object v4, p1

    .line 291
    invoke-virtual/range {v1 .. v9}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/m/receiver/PushReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p7}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/m/receiver/PushReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/m/receiver/PushReceiver;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PushReceiver"

    .line 48
    invoke-static {v0, p1}, Lcom/maya/sdk/m/utils/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static b(Landroid/content/Context;)J
    .locals 3

    const-string v0, "pref_push_time"

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "push_time"

    const-wide/16 v1, 0x0

    .line 440
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/maya/sdk/m/receiver/PushReceiver;->b(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p0}, Lcom/maya/sdk/m/model/MConfigManager;->getPushDelayTime(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-lez v4, :cond_0

    .line 450
    invoke-static {p0}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Landroid/content/Context;)V

    return v0

    .line 453
    :cond_0
    invoke-static {p0}, Lcom/maya/sdk/m/model/MConfigManager;->getIsPushDelay(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    const-string v0, "\u8c03\u7528push"

    .line 118
    invoke-direct {p0, v0}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u63a8\u9001\u65f6\u95f4\u672a\u5230"

    .line 121
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "\u53d1\u8d77Push \u8bf7\u6c42"

    .line 125
    invoke-direct {p0, v0}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/maya/sdk/m/http/b;

    invoke-direct {v0, p1}, Lcom/maya/sdk/m/http/b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 128
    new-instance v1, Lcom/maya/sdk/m/receiver/PushReceiver$1;

    invoke-direct {v1, p0, v0}, Lcom/maya/sdk/m/receiver/PushReceiver$1;-><init>(Lcom/maya/sdk/m/receiver/PushReceiver;Lcom/maya/sdk/m/http/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/http/b;->a(ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v7, p8

    .line 314
    invoke-virtual/range {v0 .. v7}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 309
    invoke-virtual/range {v0 .. v7}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object/from16 v0, p7

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 325
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

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    move-object/from16 v6, p6

    .line 350
    invoke-direct/range {v0 .. v6}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 3

    .line 179
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 180
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "msg"

    .line 181
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 183
    invoke-interface {p2, p1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {p2, v1, v0}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    const-string v0, "\u63a8\u9001\u6570\u636e\u89e3\u6790\u9519\u8bef"

    .line 189
    invoke-interface {p2, p1, v0}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
    .locals 11

    .line 207
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 211
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 212
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    .line 213
    invoke-direct {p0, v1, v2}, Lcom/maya/sdk/m/receiver/PushReceiver;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    const-string v3, "push_title"

    .line 214
    invoke-direct {p0, v1, v3}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "push_desc"

    .line 215
    invoke-direct {p0, v1, v4}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "push_type"

    .line 216
    invoke-direct {p0, v1, v5}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "dst_url"

    .line 217
    invoke-direct {p0, v1, v6}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "icon_url"

    .line 218
    invoke-direct {p0, v1, v7}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "img_url"

    .line 219
    invoke-direct {p0, v1, v8}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "package_name"

    .line 220
    invoke-direct {p0, v1, v9}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "push_id"

    .line 225
    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "push_title"

    .line 226
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "push_desc"

    .line 227
    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "push_type"

    .line 228
    invoke-virtual {v9, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dst_url"

    .line 229
    invoke-virtual {v9, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "icon_url"

    .line 230
    invoke-virtual {v9, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "img_url"

    .line 231
    invoke-virtual {v9, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "package_name"

    .line 232
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, v9}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u89e3\u6790\u63a8\u9001\u6570\u636e\u65f6\u53d1\u751f\u9519\u8bef."

    .line 242
    invoke-interface {p2, p1}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 54
    iput-object p1, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->b:Landroid/content/Context;

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "maya_floatbutton_logo"

    const-string v1, "drawable"

    .line 57
    invoke-static {v0, v1, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver;->a:I

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:ACTION_BOOT_COMPLETED"

    .line 62
    invoke-direct {p0, p2}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:ACTION_BOOT_COMPLETED"

    .line 68
    invoke-direct {p0, p2}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:ACTION_USER_PRESENT"

    .line 74
    invoke-direct {p0, p2}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_2
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.category.LAUNCHER"

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p2, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:android.intent.category.LAUNCHER"

    .line 106
    invoke-direct {p0, p2}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->d(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:android.intent.action.PACKAGE_REMOVED"

    .line 110
    invoke-direct {p0, p2}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->d(Landroid/content/Context;)V

    goto :goto_2

    .line 80
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Ljava/lang/String;)V

    const-string p2, "connectivity"

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 90
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v1

    :goto_1
    if-eqz p2, :cond_7

    .line 94
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    :cond_7
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 97
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p2, v0, :cond_8

    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p2, v1, :cond_8

    goto :goto_2

    :cond_8
    const-string p2, "\u63a8\u9001\uff0c\u89e6\u53d1\u4e86:CONNECTIVITY_ACTION"

    .line 101
    invoke-direct {p0, p2}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/receiver/PushReceiver;->d(Landroid/content/Context;)V

    :cond_9
    :goto_2
    return-void
.end method
