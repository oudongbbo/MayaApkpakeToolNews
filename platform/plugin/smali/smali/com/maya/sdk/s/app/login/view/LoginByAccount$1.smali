.class Lcom/maya/sdk/s/app/login/view/LoginByAccount$1;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByAccount;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 129
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 132
    if-eqz p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_accountclear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$000(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_accountclear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$000(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :goto_0
    return-void
.end method
