.class Lcom/maya/sdk/m/views/MoneySelectDialog$2;
.super Ljava/lang/Object;
.source "MoneySelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/views/MoneySelectDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/views/MoneySelectDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/views/MoneySelectDialog;

    .line 54
    iput-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    # getter for: Lcom/maya/sdk/m/views/MoneySelectDialog;->money:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->access$100(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "moneyText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "maya_tips_pay_input_money"

    iget-object v3, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    # getter for: Lcom/maya/sdk/m/views/MoneySelectDialog;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/maya/sdk/m/views/MoneySelectDialog;->access$200(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "tips":Ljava/lang/String;
    iget-object v3, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    # getter for: Lcom/maya/sdk/m/views/MoneySelectDialog;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/maya/sdk/m/views/MoneySelectDialog;->access$200(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 64
    .end local v1    # "tips":Ljava/lang/String;
    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v3, 0x186a0

    if-le v1, v3, :cond_1

    .line 67
    const-string v1, "maya_tips_pay_money_limit"

    iget-object v3, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    # getter for: Lcom/maya/sdk/m/views/MoneySelectDialog;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/maya/sdk/m/views/MoneySelectDialog;->access$200(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .restart local v1    # "tips":Ljava/lang/String;
    iget-object v3, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    # getter for: Lcom/maya/sdk/m/views/MoneySelectDialog;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/maya/sdk/m/views/MoneySelectDialog;->access$200(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 69
    .end local v1    # "tips":Ljava/lang/String;
    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    # getter for: Lcom/maya/sdk/m/views/MoneySelectDialog;->callback:Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;
    invoke-static {v1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->access$000(Lcom/maya/sdk/m/views/MoneySelectDialog;)Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    # getter for: Lcom/maya/sdk/m/views/MoneySelectDialog;->callback:Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;
    invoke-static {v1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->access$000(Lcom/maya/sdk/m/views/MoneySelectDialog;)Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;->onConfirm(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-virtual {v1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->dismiss()V

    .line 76
    :cond_2
    :goto_0
    return-void
.end method
