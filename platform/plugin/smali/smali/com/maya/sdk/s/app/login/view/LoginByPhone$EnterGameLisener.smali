.class Lcom/maya/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginByPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterGameLisener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    .line 253
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 258
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_input:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$500(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "phone":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->login_phone_idcode_input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$700(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "vCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {v2, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->LoginByPhone(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method
