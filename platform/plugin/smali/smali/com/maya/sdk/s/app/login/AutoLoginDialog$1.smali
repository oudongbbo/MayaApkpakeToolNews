.class Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/AutoLoginDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;->a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;->a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;->a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-static {v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->a(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;->a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-static {v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->a(Lcom/maya/sdk/s/app/login/AutoLoginDialog;Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method
