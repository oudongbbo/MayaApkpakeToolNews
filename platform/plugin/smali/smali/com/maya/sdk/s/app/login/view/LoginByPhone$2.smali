.class Lcom/maya/sdk/s/app/login/view/LoginByPhone$2;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByPhone;->initPopWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    .line 202
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

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

    .line 207
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_input:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$500(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    iget-object v1, v1, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->Phonenumber:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method
