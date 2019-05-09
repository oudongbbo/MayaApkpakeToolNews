.class Lcom/maya/sdk/s/app/login/BindDialog$1;
.super Landroid/os/Handler;
.source "BindDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/BindDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/BindDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/BindDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/BindDialog;

    .line 82
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/BindDialog$1;->this$0:Lcom/maya/sdk/s/app/login/BindDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 87
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/BindDialog$1;->this$0:Lcom/maya/sdk/s/app/login/BindDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/BindDialog;->dismiss()V

    .line 88
    return-void
.end method
