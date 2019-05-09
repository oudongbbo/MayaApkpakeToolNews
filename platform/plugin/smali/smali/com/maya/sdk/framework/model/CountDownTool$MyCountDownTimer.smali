.class Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "CountDownTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/model/CountDownTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/model/CountDownTool;


# direct methods
.method public constructor <init>(Lcom/maya/sdk/framework/model/CountDownTool;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/model/CountDownTool;
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .line 43
    iput-object p1, p0, Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;->this$0:Lcom/maya/sdk/framework/model/CountDownTool;

    .line 44
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 45
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;->this$0:Lcom/maya/sdk/framework/model/CountDownTool;

    # getter for: Lcom/maya/sdk/framework/model/CountDownTool;->feedback:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;
    invoke-static {v0}, Lcom/maya/sdk/framework/model/CountDownTool;->access$000(Lcom/maya/sdk/framework/model/CountDownTool;)Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;->this$0:Lcom/maya/sdk/framework/model/CountDownTool;

    # getter for: Lcom/maya/sdk/framework/model/CountDownTool;->feedback:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;
    invoke-static {v0}, Lcom/maya/sdk/framework/model/CountDownTool;->access$000(Lcom/maya/sdk/framework/model/CountDownTool;)Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;->onEnd()V

    .line 53
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .line 57
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;->this$0:Lcom/maya/sdk/framework/model/CountDownTool;

    # getter for: Lcom/maya/sdk/framework/model/CountDownTool;->feedback:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;
    invoke-static {v0}, Lcom/maya/sdk/framework/model/CountDownTool;->access$000(Lcom/maya/sdk/framework/model/CountDownTool;)Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;->this$0:Lcom/maya/sdk/framework/model/CountDownTool;

    # getter for: Lcom/maya/sdk/framework/model/CountDownTool;->feedback:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;
    invoke-static {v0}, Lcom/maya/sdk/framework/model/CountDownTool;->access$000(Lcom/maya/sdk/framework/model/CountDownTool;)Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    move-result-object v0

    long-to-int v1, p1

    div-int/lit16 v1, v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;->onTick(I)V

    .line 60
    :cond_0
    return-void
.end method
