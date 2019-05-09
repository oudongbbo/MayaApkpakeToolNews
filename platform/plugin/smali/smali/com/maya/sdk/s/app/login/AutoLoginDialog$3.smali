.class Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;
.super Landroid/os/Handler;
.source "AutoLoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/AutoLoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    .line 128
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 132
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginDialog;->autoListener:Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->access$300(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;->autoEnd()V

    .line 144
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->dismiss()V

    .line 145
    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->access$000(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->access$100(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/maya/sdk/s/app/login/AutoLoginDialog;->endAnimate(Landroid/view/View;Landroid/content/Context;)V
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->access$400(Lcom/maya/sdk/s/app/login/AutoLoginDialog;Landroid/view/View;Landroid/content/Context;)V

    .line 139
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginDialog;->showTime:I
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->access$500(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xc8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    nop

    .line 150
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
