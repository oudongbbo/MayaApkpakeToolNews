.class Lcom/maya/sdk/m/views/MoneySelectDialog$1;
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

    .line 42
    iput-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$1;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$1;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    # getter for: Lcom/maya/sdk/m/views/MoneySelectDialog;->callback:Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;
    invoke-static {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->access$000(Lcom/maya/sdk/m/views/MoneySelectDialog;)Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$1;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    # getter for: Lcom/maya/sdk/m/views/MoneySelectDialog;->callback:Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;
    invoke-static {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->access$000(Lcom/maya/sdk/m/views/MoneySelectDialog;)Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;->onCancel()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$1;->this$0:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->dismiss()V

    .line 51
    return-void
.end method
