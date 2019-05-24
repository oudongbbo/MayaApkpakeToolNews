.class Lcom/maya/sdk/m/views/MoneySelectDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
.field final synthetic a:Lcom/maya/sdk/m/views/MoneySelectDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/views/MoneySelectDialog;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 59
    iget-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-static {p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->b(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "maya_tips_pay_input_money"

    .line 61
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-static {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->c(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-static {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->c(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v2, 0x186a0

    if-le v0, v2, :cond_1

    const-string p1, "maya_tips_pay_money_limit"

    .line 67
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-static {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->c(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-static {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->c(Lcom/maya/sdk/m/views/MoneySelectDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-static {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->a(Lcom/maya/sdk/m/views/MoneySelectDialog;)Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-static {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->a(Lcom/maya/sdk/m/views/MoneySelectDialog;)Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;->onConfirm(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$2;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-virtual {p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method
