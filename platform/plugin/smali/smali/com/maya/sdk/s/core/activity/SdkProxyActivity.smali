.class public Lcom/maya/sdk/s/core/activity/SdkProxyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final CODE_ACTIVITY_REQUEST:I = 0x208

.field public static final CODE_ACTIVITY_RESULT:I = 0x522

.field public static final TAG_LOGIN:Ljava/lang/String; = "login"

.field public static final TAG_PAY:Ljava/lang/String; = "pay"

.field public static final TAG_UCENTER:Ljava/lang/String; = "usercenter"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkProxyActivity;->a:Ljava/lang/String;

    return-void
.end method
