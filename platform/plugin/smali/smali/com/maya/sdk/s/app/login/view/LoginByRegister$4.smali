.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$4;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByRegister;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 252
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$4;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 255
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_AGREMENT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$4;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$4;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v2}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$4;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_AGREMENT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void
.end method
