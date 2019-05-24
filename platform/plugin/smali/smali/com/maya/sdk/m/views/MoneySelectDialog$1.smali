.class Lcom/maya/sdk/m/views/MoneySelectDialog$1;
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

    .line 42
    iput-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$1;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$1;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-static {p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->a(Lcom/maya/sdk/m/views/MoneySelectDialog;)Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$1;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-static {p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->a(Lcom/maya/sdk/m/views/MoneySelectDialog;)Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;->onCancel()V

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/maya/sdk/m/views/MoneySelectDialog$1;->a:Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-virtual {p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->dismiss()V

    return-void
.end method
