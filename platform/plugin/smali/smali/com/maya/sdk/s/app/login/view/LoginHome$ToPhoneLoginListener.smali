.class Lcom/maya/sdk/s/app/login/view/LoginHome$ToPhoneLoginListener;
.super Ljava/lang/Object;
.source "LoginHome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToPhoneLoginListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginHome;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginHome;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginHome;

    .line 84
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginHome$ToPhoneLoginListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome$ToPhoneLoginListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginHome;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginHome;->father:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->access$000(Lcom/maya/sdk/s/app/login/view/LoginHome;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->MobilePhoneFastLogin()V

    .line 91
    return-void
.end method
