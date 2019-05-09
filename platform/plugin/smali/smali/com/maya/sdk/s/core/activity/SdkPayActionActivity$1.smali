.class Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;
.super Landroid/os/Handler;
.source "SdkPayActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;

    .line 55
    iput-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;->this$0:Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 59
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    goto :goto_0

    .line 72
    :pswitch_1
    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;->this$0:Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;

    iget-object v1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;->this$0:Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;

    # getter for: Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payDataString:Ljava/lang/String;
    invoke-static {v1}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->access$000(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payUmpop(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->access$100(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;Ljava/lang/String;)V

    .line 64
    nop

    .line 84
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
