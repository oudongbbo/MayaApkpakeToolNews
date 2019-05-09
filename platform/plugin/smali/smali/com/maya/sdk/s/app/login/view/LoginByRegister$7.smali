.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$7;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loadLocalName()V
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

    .line 342
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$7;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$7;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$300(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getRandLetter(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getRandNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method
