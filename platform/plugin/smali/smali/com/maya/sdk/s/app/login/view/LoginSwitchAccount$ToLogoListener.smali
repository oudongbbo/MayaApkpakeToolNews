.class Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToLogoListener;
.super Ljava/lang/Object;
.source "LoginSwitchAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToLogoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 303
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToLogoListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .line 307
    return-void
.end method
