.class Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;
.super Landroid/os/Handler;
.source "LoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/view/loading/LoadingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/view/loading/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/view/loading/LoadingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    .line 126
    iput-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 130
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    # setter for: Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isDefaultTimeEnd:Z
    invoke-static {v0, v1}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->access$202(Lcom/maya/sdk/framework/view/loading/LoadingDialog;Z)Z

    .line 142
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    # getter for: Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isUserTimeEnd:Z
    invoke-static {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->access$300(Lcom/maya/sdk/framework/view/loading/LoadingDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->dismiss()V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    # getter for: Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/maya/sdk/framework/view/loading/LoadingSmile;
    invoke-static {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->access$000(Lcom/maya/sdk/framework/view/loading/LoadingDialog;)Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->startAnim()V

    .line 136
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    # getter for: Lcom/maya/sdk/framework/view/loading/LoadingDialog;->showTime:I
    invoke-static {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->access$100(Lcom/maya/sdk/framework/view/loading/LoadingDialog;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    nop

    .line 150
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
