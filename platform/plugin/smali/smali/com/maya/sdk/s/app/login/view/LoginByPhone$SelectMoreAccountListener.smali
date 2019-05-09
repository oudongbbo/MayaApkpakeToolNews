.class Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginByPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectMoreAccountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    .line 160
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->isQuickClick()Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$100(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_rl:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$300(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->initPopWindows()V
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$400(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)V

    .line 177
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_rl:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$300(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 185
    :goto_0
    return-void
.end method
