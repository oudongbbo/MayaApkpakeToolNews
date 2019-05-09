.class Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;
.super Ljava/lang/Object;
.source "AccountPopAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    .line 77
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    iput p2, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 82
    new-instance v0, Lcom/maya/sdk/framework/user/AccountManager;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    # getter for: Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->access$200(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    # getter for: Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->access$200(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    # getter for: Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;
    invoke-static {v2}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->access$300(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/user/UserInfoBean;->getUname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/framework/user/AccountManager;->delAccountFromFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    # getter for: Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->access$300(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method
