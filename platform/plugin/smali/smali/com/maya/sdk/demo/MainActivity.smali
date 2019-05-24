.class public Lcom/maya/sdk/demo/MainActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "lkFOg2eADPxzB3tUKwnJ1MWGa"

    .line 26
    iput-object v0, p0, Lcom/maya/sdk/demo/MainActivity;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 251
    iput v0, p0, Lcom/maya/sdk/demo/MainActivity;->a:I

    .line 560
    new-instance v0, Lcom/maya/sdk/demo/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/maya/sdk/demo/MainActivity$2;-><init>(Lcom/maya/sdk/demo/MainActivity;)V

    iput-object v0, p0, Lcom/maya/sdk/demo/MainActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 3

    .line 58
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    .line 63
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/demo/MainActivity;->b:Ljava/lang/String;

    new-instance v2, Lcom/maya/sdk/demo/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/maya/sdk/demo/MainActivity$1;-><init>(Lcom/maya/sdk/demo/MainActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/maya/sdk/m/MayaMsdk;->doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 552
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 212
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 213
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/MayaMsdk;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070019

    const-wide/16 v1, 0x3e8

    if-eq p1, v0, :cond_4

    const v0, 0x7f070024

    if-eq p1, v0, :cond_3

    const v0, 0x7f070105

    if-eq p1, v0, :cond_2

    const v0, 0x7f070107

    if-eq p1, v0, :cond_1

    const v0, 0x7f070110

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 332
    :pswitch_0
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/maya/sdk/m/MayaMsdk;->userSwitch(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 367
    :pswitch_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "money"

    const-string v3, "0"

    .line 368
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_no"

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_name"

    const-string v1, "\u4e0d\u5b9a\u989d\u5145\u503c"

    .line 370
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_ext"

    const-string v1, "\u6d4b\u8bd5\u6570\u636e"

    .line 371
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v1, "007"

    .line 372
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v1, "\u8a79\u59c6\u65af\u90a6\u5fb7"

    .line 373
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v1, "88"

    .line 374
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_id"

    const-string v1, "001"

    .line 375
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v1, "\u5f00\u5929\u8f9f\u5730"

    .line 376
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/maya/sdk/m/MayaMsdk;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 347
    :pswitch_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "money"

    const-string v3, "1"

    .line 348
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_no"

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_name"

    const-string v1, "\u4e00\u6bdb\u94b1\u7684\u5546\u54c1"

    .line 350
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_ext"

    const-string v1, "\u6d4b\u8bd5\u6570\u636e"

    .line 351
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v1, "007"

    .line 352
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v1, "\u8a79\u59c6\u65af\u90a6\u5fb7"

    .line 353
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v1, "88"

    .line 354
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_id"

    const-string v1, "001"

    .line 355
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v1, "\u5f00\u5929\u8f9f\u5730"

    .line 356
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/maya/sdk/m/MayaMsdk;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 339
    :pswitch_3
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/maya/sdk/m/MayaMsdk;->userLogout(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 321
    :pswitch_4
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/maya/sdk/m/MayaMsdk;->userLogin(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 450
    :pswitch_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "server_id"

    const-string v3, "001"

    .line 451
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v3, "\u534e\u590f\u4e00\u670d"

    .line 452
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v3, "1"

    .line 453
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v3, "1"

    .line 454
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v3, "\u5b59\u609f\u7a7a"

    .line 455
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_oldname"

    const-string v3, "\u65e0"

    .line 456
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_createtime"

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_gender"

    const-string v1, "\u65e0"

    .line 458
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_vip"

    const-string v1, "7"

    .line 459
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_balance"

    const-string v1, "10000"

    .line 460
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_fightvalue"

    const-string v1, "1000"

    .line 461
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_profession"

    const-string v1, "\u6218\u58eb"

    .line 462
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_partyname"

    const-string v1, "\u82b1\u679c\u5c71"

    .line 463
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_extra"

    const-string v1, "\u65e0"

    .line 464
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/MayaMsdk;->roleLevelUp(Ljava/util/HashMap;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89d2\u8272\u5347\u7ea7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 535
    :pswitch_6
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/maya/sdk/m/MayaMsdk;->openUserSuperVip(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 527
    :pswitch_7
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/maya/sdk/m/MayaMsdk;->openUserNameAuth(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 519
    :pswitch_8
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/maya/sdk/m/MayaMsdk;->openSdkCustomerService(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 478
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "server_id"

    const-string v3, "001"

    .line 479
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v3, "\u534e\u590f\u4e00\u670d"

    .line 480
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v3, "1"

    .line 482
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v3, "1"

    .line 483
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v3, "\u9f50\u5929\u5927\u5723"

    .line 484
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_oldname"

    const-string v3, "\u5b59\u609f\u7a7a"

    .line 485
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_createtime"

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_gender"

    const-string v1, "\u7537"

    .line 488
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_vip"

    const-string v1, "10"

    .line 489
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_balance"

    const-string v1, "10000"

    .line 490
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_fightvalue"

    const-string v1, "999"

    .line 491
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_profession"

    const-string v1, "\u6218\u58eb"

    .line 492
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_partyname"

    const-string v1, "\u82b1\u679c\u5c71"

    .line 493
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_extra"

    const-string v1, "\u65e0"

    .line 494
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/MayaMsdk;->roleChangeName(Ljava/util/HashMap;)V

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89d2\u8272\u6362\u540d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "server_id"

    const-string v3, "001"

    .line 424
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v3, "\u534e\u590f\u4e00\u670d"

    .line 425
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v3, "1"

    .line 426
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v3, "1"

    .line 427
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v3, "\u5b59\u609f\u7a7a"

    .line 428
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_oldname"

    const-string v3, "\u65e0"

    .line 429
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_createtime"

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_gender"

    const-string v1, "\u7537"

    .line 431
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_vip"

    const-string v1, "1"

    .line 432
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_balance"

    const-string v1, "10"

    .line 433
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_fightvalue"

    const-string v1, "100"

    .line 434
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_profession"

    const-string v1, "\u6218\u58eb"

    .line 435
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_partyname"

    const-string v1, "\u82b1\u679c\u5c71"

    .line 436
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_extra"

    const-string v1, "\u65e0"

    .line 437
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/MayaMsdk;->roleEnterGame(Ljava/util/HashMap;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fdb\u5165\u6e38\u620f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :cond_2
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/maya/sdk/m/MayaMsdk;->doExitGame(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 506
    :cond_3
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/maya/sdk/m/MayaMsdk;->getGid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/MayaMsdk;->getPid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/maya/sdk/m/MayaMsdk;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/maya/sdk/m/MayaMsdk;->getSdkVer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u6e38\u620f\u53c2\u6570\uff1a\n gid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n pid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n mid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n sdkver="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "server_id"

    const-string v3, "001"

    .line 399
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v3, "\u534e\u590f\u4e00\u670d"

    .line 400
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v3, "1"

    .line 401
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v3, "1"

    .line 402
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v3, "\u5b59\u609f\u7a7a"

    .line 403
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_oldname"

    const-string v3, "\u65e0"

    .line 404
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_createtime"

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_gender"

    const-string v1, "\u7537"

    .line 406
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_vip"

    const-string v1, "0"

    .line 407
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_balance"

    const-string v1, "0"

    .line 408
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_fightvalue"

    const-string v1, "0"

    .line 409
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_profession"

    const-string v1, "\u6218\u58eb"

    .line 410
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_partyname"

    const-string v1, "\u65e0"

    .line 411
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_extra"

    const-string v1, "\u65e0"

    .line 412
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/MayaMsdk;->roleCreate(Ljava/util/HashMap;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521b\u5efa\u89d2\u8272:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0700fc
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f07011b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 225
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/MayaMsdk;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0}, Lcom/maya/sdk/demo/MainActivity;->a()V

    const/high16 p1, 0x7f090000

    .line 35
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->setContentView(I)V

    const p1, 0x7f07011c

    .line 40
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070120

    .line 41
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07011e

    .line 42
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07011f

    .line 43
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070105

    .line 44
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070019

    .line 45
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070107

    .line 46
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07011b

    .line 47
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070110

    .line 48
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07011d

    .line 49
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070024

    .line 50
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0700fc

    .line 51
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0700fd

    .line 52
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0700fe

    .line 53
    invoke-virtual {p0, p1}, Lcom/maya/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 207
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/m/MayaMsdk;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 545
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/maya/sdk/m/MayaMsdk;->doExitGame(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    .line 548
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 219
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/MayaMsdk;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 194
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/m/MayaMsdk;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 181
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/m/MayaMsdk;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/m/MayaMsdk;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 175
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/m/MayaMsdk;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 201
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/m/MayaMsdk;->onStop()V

    return-void
.end method
