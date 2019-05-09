.class Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;
.super Landroid/os/Handler;
.source "FloatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/floatwindow/FloatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 341
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 343
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 385
    :pswitch_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->setHalfHideStatus(Z)V
    invoke-static {v0, v2}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$900(Lcom/maya/sdk/s/app/floatwindow/FloatManager;Z)V

    goto/16 :goto_0

    .line 372
    :pswitch_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    const-string v2, "maya_left_popwin_anim_style"

    const-string v4, "style"

    iget-object v5, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 373
    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1600(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 372
    invoke-virtual {v0, v2}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setAnimationStyle(I)V

    .line 377
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1, v3}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIZ)V

    .line 380
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->update()V

    .line 381
    goto :goto_0

    .line 362
    :pswitch_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    const-string v1, "maya_right_popwin_anim_style"

    const-string v4, "style"

    iget-object v5, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 363
    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1600(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 362
    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setAnimationStyle(I)V

    .line 365
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;
    invoke-static {v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIZ)V

    .line 367
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->update()V

    .line 368
    goto :goto_0

    .line 355
    :pswitch_3
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1500(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1, v3}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIZ)V

    .line 357
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1500(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->update()V

    .line 358
    goto :goto_0

    .line 348
    :pswitch_4
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1500(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;
    invoke-static {v1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIZ)V

    .line 350
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1500(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->update()V

    .line 351
    nop

    .line 388
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
