.class Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;->a:Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 63
    :pswitch_0
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;->a:Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;

    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;->a:Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;

    invoke-static {v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->a(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->a(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;Ljava/lang/String;)V

    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
