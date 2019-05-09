.class public Lcom/maya/sdk/framework/model/CountDownTool;
.super Ljava/lang/Object;
.source "CountDownTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;,
        Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;
    }
.end annotation


# instance fields
.field private feedback:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

.field private showTime:I

.field private timer:Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "time"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/maya/sdk/framework/model/CountDownTool;->showTime:I

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/framework/model/CountDownTool;)Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/model/CountDownTool;

    .line 5
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->feedback:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    return-object v0
.end method


# virtual methods
.method public setFeedBack(Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;)V
    .locals 0
    .param p1, "feed"    # Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    .line 64
    iput-object p1, p0, Lcom/maya/sdk/framework/model/CountDownTool;->feedback:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    .line 65
    return-void
.end method

.method public startCountDown()V
    .locals 7

    .line 22
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->feedback:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->feedback:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    invoke-interface {v0}, Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;->onStart()V

    .line 26
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;

    iget v1, p0, Lcom/maya/sdk/framework/model/CountDownTool;->showTime:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;-><init>(Lcom/maya/sdk/framework/model/CountDownTool;JJ)V

    iput-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->timer:Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;

    .line 27
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->timer:Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 28
    return-void
.end method

.method public stopCountDown()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->timer:Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->timer:Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/model/CountDownTool$MyCountDownTimer;->cancel()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->feedback:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->feedback:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    invoke-interface {v0}, Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;->onEnd()V

    .line 38
    :cond_1
    return-void
.end method
