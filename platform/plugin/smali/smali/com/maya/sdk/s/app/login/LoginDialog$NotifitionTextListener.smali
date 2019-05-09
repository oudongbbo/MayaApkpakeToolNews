.class Lcom/maya/sdk/s/app/login/LoginDialog$NotifitionTextListener;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/LoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifitionTextListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/LoginDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/LoginDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/LoginDialog;

    .line 180
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/LoginDialog$NotifitionTextListener;->this$0:Lcom/maya/sdk/s/app/login/LoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog$NotifitionTextListener;->this$0:Lcom/maya/sdk/s/app/login/LoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->access$100(Lcom/maya/sdk/s/app/login/LoginDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getScrollMessageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog$NotifitionTextListener;->this$0:Lcom/maya/sdk/s/app/login/LoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->access$100(Lcom/maya/sdk/s/app/login/LoginDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/LoginDialog$NotifitionTextListener;->this$0:Lcom/maya/sdk/s/app/login/LoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/LoginDialog;->access$100(Lcom/maya/sdk/s/app/login/LoginDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getScrollMessageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method
