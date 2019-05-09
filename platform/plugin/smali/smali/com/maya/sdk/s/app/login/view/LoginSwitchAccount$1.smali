.class Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;
.super Ljava/lang/Object;
.source "LoginSwitchAccount.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->initPopWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 191
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 195
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$200(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$100(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$100(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$302(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$100(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->getUname()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$402(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$100(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$502(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    return-void
.end method
