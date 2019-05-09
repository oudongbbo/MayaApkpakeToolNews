.class public Lcom/maya/sdk/s/app/FMDemoActivity;
.super Landroid/app/Activity;
.source "FMDemoActivity.java"


# instance fields
.field private appkey:Ljava/lang/String;

.field private mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const-string v0, "lkFOg2eADPxzB3tUKwnJ1MWGa"

    iput-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->appkey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/FMDemoActivity;)Lcom/maya/sdk/s/app/FMSdkCore;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/FMDemoActivity;

    .line 27
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 385
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 386
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lcom/maya/open/main/OpenHttpUtils;->getInstance()Lcom/maya/open/main/OpenHttpUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/FMDemoActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/main/OpenHttpUtils;->init(Landroid/app/Application;)V

    .line 38
    invoke-static {}, Lcom/maya/sdk/s/app/FMSdkCore;->getInstance()Lcom/maya/sdk/s/app/FMSdkCore;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->appkey:Ljava/lang/String;

    new-instance v2, Lcom/maya/sdk/s/app/FMDemoActivity$1;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$1;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/maya/sdk/s/app/FMSdkCore;->init(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 55
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v1, Lcom/maya/sdk/s/app/FMDemoActivity$2;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$2;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->setUserSwitchCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 82
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v1, Lcom/maya/sdk/s/app/FMDemoActivity$3;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$3;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->setUserLogoutCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 124
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "login_regisiter":Landroid/widget/Button;
    const-string v1, "\u767b\u5f55|\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v1, Lcom/maya/sdk/s/app/FMDemoActivity$4;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$4;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "change":Landroid/widget/Button;
    const-string v4, "\u5207\u6362\u8d26\u53f7"

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v4, Lcom/maya/sdk/s/app/FMDemoActivity$5;

    invoke-direct {v4, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$5;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 197
    .local v4, "submit":Landroid/widget/Button;
    const-string v5, "\u5f55\u5165\u89d2\u8272"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v5, Lcom/maya/sdk/s/app/FMDemoActivity$6;

    invoke-direct {v5, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$6;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 230
    .local v5, "cleanUsrCache":Landroid/widget/Button;
    const-string v6, "\u6e05\u9664\u6570\u636e"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v6, Lcom/maya/sdk/s/app/FMDemoActivity$7;

    invoke-direct {v6, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$7;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 245
    .local v6, "logout":Landroid/widget/Button;
    const-string v7, "\u9000\u51fa\u6e38\u620f"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 246
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    new-instance v7, Lcom/maya/sdk/s/app/FMDemoActivity$8;

    invoke-direct {v7, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$8;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 283
    .local v7, "pay":Landroid/widget/Button;
    const-string v8, "\u652f\u4ed8"

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    new-instance v2, Lcom/maya/sdk/s/app/FMDemoActivity$9;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$9;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 343
    .local v2, "frame":Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    const/16 v8, 0x11

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 346
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 347
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 349
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 357
    invoke-virtual {p0, v2}, Lcom/maya/sdk/s/app/FMDemoActivity;->setContentView(Landroid/view/View;)V

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getMobileDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "runID":Ljava/lang/String;
    invoke-static {v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-static {p0, v3}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setSdkRunID(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 391
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v1, Lcom/maya/sdk/s/app/FMDemoActivity$10;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$10;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->userExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 411
    const/4 v0, 0x1

    return v0

    .line 413
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 380
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/FMSdkCore;->onPause()V

    .line 381
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 368
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/FMSdkCore;->onResume()V

    .line 369
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 374
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/FMSdkCore;->onStop()V

    .line 375
    return-void
.end method
