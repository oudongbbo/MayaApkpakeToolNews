.class Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;
.super Ljava/lang/Object;
.source "FloatManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/floatwindow/FloatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FloatTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 184
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    # setter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$502(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F

    .line 209
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    # setter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInScreen:F
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$602(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F

    .line 211
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F
    invoke-static {v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$500(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)F

    move-result v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInView:F
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$300(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInScreen:F
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$600(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)F

    move-result v2

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInView:F
    invoke-static {v3}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$400(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)F

    move-result v3

    sub-float/2addr v2, v3

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->updateViewPosition(FF)V
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1000(Lcom/maya/sdk/s/app/floatwindow/FloatManager;FF)V

    .line 213
    goto/16 :goto_1

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isTouchClick(Landroid/view/View;)Z
    invoke-static {v0, p1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1100(Lcom/maya/sdk/s/app/floatwindow/FloatManager;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isRightFloat()Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1200(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenWidth:I
    invoke-static {v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1300(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)I

    move-result v1

    int-to-float v1, v1

    # setter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$502(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    const/4 v1, 0x0

    # setter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$502(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F
    invoke-static {v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$500(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)F

    move-result v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1400(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->updateViewPosition(FF)V
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1000(Lcom/maya/sdk/s/app/floatwindow/FloatManager;FF)V

    .line 231
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$200(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$200(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->start()Landroid/os/CountDownTimer;

    goto :goto_1

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$200(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$200(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->cancel()V

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    # setter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInView:F
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$302(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F

    .line 197
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    # setter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInView:F
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$402(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F

    .line 198
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    # setter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$502(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F

    .line 199
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    # setter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInScreen:F
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$602(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F

    .line 200
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    # setter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xDownInScreen:F
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$702(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F

    .line 201
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    # setter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yDownInScreen:F
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$802(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F

    .line 203
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    const/4 v1, 0x0

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->setHalfHideStatus(Z)V
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$900(Lcom/maya/sdk/s/app/floatwindow/FloatManager;Z)V

    .line 205
    nop

    .line 238
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
