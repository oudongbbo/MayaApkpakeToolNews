.class Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountForgetPassword;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginByAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountForgetPassword"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 307
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountForgetPassword;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 311
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountForgetPassword;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->swtichToForgetPwd()V

    .line 312
    return-void
.end method
