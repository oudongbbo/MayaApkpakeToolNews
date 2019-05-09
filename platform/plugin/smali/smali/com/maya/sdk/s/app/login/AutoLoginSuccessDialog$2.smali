.class Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$2;
.super Landroid/os/Handler;
.source "AutoLoginSuccessDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    .line 114
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->dismiss()V

    .line 131
    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->access$000(Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->access$100(Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->endAnimate(Landroid/view/View;Landroid/content/Context;)V
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->access$300(Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;Landroid/view/View;Landroid/content/Context;)V

    .line 125
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->showTime:I
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->access$400(Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x12c

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$2;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    nop

    .line 136
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
