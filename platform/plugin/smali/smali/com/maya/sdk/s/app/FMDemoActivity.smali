.class public Lcom/maya/sdk/s/app/FMDemoActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/maya/sdk/s/app/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "lkFOg2eADPxzB3tUKwnJ1MWGa"

    .line 29
    iput-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/s/app/FMDemoActivity;)Lcom/maya/sdk/s/app/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->b:Lcom/maya/sdk/s/app/a;

    return-object p0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 385
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lcom/maya/open/main/OpenHttpUtils;->getInstance()Lcom/maya/open/main/OpenHttpUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/FMDemoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/maya/open/main/OpenHttpUtils;->init(Landroid/app/Application;)V

    .line 38
    invoke-static {}, Lcom/maya/sdk/s/app/a;->a()Lcom/maya/sdk/s/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->b:Lcom/maya/sdk/s/app/a;

    .line 40
    iget-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->b:Lcom/maya/sdk/s/app/a;

    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->a:Ljava/lang/String;

    new-instance v1, Lcom/maya/sdk/s/app/FMDemoActivity$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$1;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/maya/sdk/s/app/a;->init(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 55
    iget-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->b:Lcom/maya/sdk/s/app/a;

    new-instance v0, Lcom/maya/sdk/s/app/FMDemoActivity$3;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$3;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {p1, v0}, Lcom/maya/sdk/s/app/a;->setUserSwitchCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 82
    iget-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->b:Lcom/maya/sdk/s/app/a;

    new-instance v0, Lcom/maya/sdk/s/app/FMDemoActivity$4;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$4;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {p1, v0}, Lcom/maya/sdk/s/app/a;->setUserLogoutCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 124
    new-instance p1, Landroid/widget/Button;

    invoke-direct {p1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v0, "\u767b\u5f55|\u6ce8\u518c"

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v0, Lcom/maya/sdk/s/app/FMDemoActivity$5;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$5;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5207\u6362\u8d26\u53f7"

    .line 166
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v3, Lcom/maya/sdk/s/app/FMDemoActivity$6;

    invoke-direct {v3, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$6;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\u5f55\u5165\u89d2\u8272"

    .line 197
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v4, Lcom/maya/sdk/s/app/FMDemoActivity$7;

    invoke-direct {v4, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$7;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u6e05\u9664\u6570\u636e"

    .line 230
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v5, Lcom/maya/sdk/s/app/FMDemoActivity$8;

    invoke-direct {v5, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$8;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "\u9000\u51fa\u6e38\u620f"

    .line 245
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 246
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    new-instance v6, Lcom/maya/sdk/s/app/FMDemoActivity$9;

    invoke-direct {v6, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$9;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v7, "\u652f\u4ed8"

    .line 283
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    new-instance v1, Lcom/maya/sdk/s/app/FMDemoActivity$10;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$10;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 343
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x11

    .line 345
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v7, 0x1

    .line 346
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 347
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 349
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 357
    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/FMDemoActivity;->setContentView(Landroid/view/View;)V

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getMobileDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-static {p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 362
    invoke-static {p0, p1}, Lcom/maya/sdk/s/core/b/b;->setSdkRunID(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 393
    iget-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->b:Lcom/maya/sdk/s/app/a;

    new-instance p2, Lcom/maya/sdk/s/app/FMDemoActivity$2;

    invoke-direct {p2, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$2;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V

    invoke-virtual {p1, p0, p2}, Lcom/maya/sdk/s/app/a;->userExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    const/4 p1, 0x1

    return p1

    .line 413
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 380
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->b:Lcom/maya/sdk/s/app/a;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/a;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 368
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->b:Lcom/maya/sdk/s/app/a;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/a;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 374
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity;->b:Lcom/maya/sdk/s/app/a;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/a;->onStop()V

    return-void
.end method
