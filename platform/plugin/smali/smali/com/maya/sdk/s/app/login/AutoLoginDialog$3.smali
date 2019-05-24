.class Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/AutoLoginDialog;
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

    .line 128
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 134
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    iget-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-static {p1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->c(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;->autoEnd()V

    .line 144
    iget-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-virtual {p1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->dismiss()V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-static {v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->a(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-static {v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b(Lcom/maya/sdk/s/app/login/AutoLoginDialog;Landroid/view/View;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 139
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->a:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-static {v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->d(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xc8

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
