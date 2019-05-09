.class public Lcom/maya/sdk/s/core/activity/SdkProxyActivity;
.super Landroid/app/Activity;
.source "SdkProxyActivity.java"


# static fields
.field public static final CODE_ACTIVITY_REQUEST:I = 0x208

.field public static final CODE_ACTIVITY_RESULT:I = 0x522

.field public static final TAG_LOGIN:Ljava/lang/String; = "login"

.field public static final TAG_PAY:Ljava/lang/String; = "pay"

.field public static final TAG_UCENTER:Ljava/lang/String; = "usercenter"


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 22
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/sdk/s/core/activity/SdkProxyActivity;->tag:Ljava/lang/String;

    .line 24
    return-void
.end method
