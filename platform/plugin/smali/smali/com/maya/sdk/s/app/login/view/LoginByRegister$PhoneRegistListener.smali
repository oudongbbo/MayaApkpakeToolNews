.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneRegistListener;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginByRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneRegistListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 512
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneRegistListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 516
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneRegistListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$900(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneRegistListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loadPhoneRegView()V
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$1000(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    .line 521
    return-void
.end method
