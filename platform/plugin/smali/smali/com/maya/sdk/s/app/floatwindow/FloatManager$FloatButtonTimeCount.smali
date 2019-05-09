.class Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;
.super Landroid/os/CountDownTimer;
.source "FloatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/floatwindow/FloatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FloatButtonTimeCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;


# direct methods
.method public constructor <init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .line 663
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 664
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 665
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 670
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->popupHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1900(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 671
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .line 675
    return-void
.end method
