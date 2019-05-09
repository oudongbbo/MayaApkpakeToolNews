.class Lcom/maya/sdk/m/views/SplashDialog$1;
.super Landroid/os/Handler;
.source "SplashDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/m/views/SplashDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/views/SplashDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/views/SplashDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/views/SplashDialog;

    .line 76
    iput-object p1, p0, Lcom/maya/sdk/m/views/SplashDialog$1;->this$0:Lcom/maya/sdk/m/views/SplashDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog$1;->this$0:Lcom/maya/sdk/m/views/SplashDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/SplashDialog;->dismiss()V

    .line 82
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog$1;->this$0:Lcom/maya/sdk/m/views/SplashDialog;

    # getter for: Lcom/maya/sdk/m/views/SplashDialog;->splashCallback:Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;
    invoke-static {v0}, Lcom/maya/sdk/m/views/SplashDialog;->access$000(Lcom/maya/sdk/m/views/SplashDialog;)Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog$1;->this$0:Lcom/maya/sdk/m/views/SplashDialog;

    # getter for: Lcom/maya/sdk/m/views/SplashDialog;->splashCallback:Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;
    invoke-static {v0}, Lcom/maya/sdk/m/views/SplashDialog;->access$000(Lcom/maya/sdk/m/views/SplashDialog;)Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;->onEnd()V

    .line 85
    :cond_0
    return-void
.end method
