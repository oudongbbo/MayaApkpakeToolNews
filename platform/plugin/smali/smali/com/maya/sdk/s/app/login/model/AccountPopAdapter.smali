.class public Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountPopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p2, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    .line 27
    return-void
.end method

.method static synthetic access$200(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    .line 19
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    .line 19
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 44
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 58
    if-nez p2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "maya_login_account_more_item"

    const-string v2, "layout"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;-><init>(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;)V

    .line 65
    .local v0, "vh":Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;
    const-string v1, "name"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->name:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$002(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 67
    const-string v1, "delete"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 67
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    # setter for: Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->delete:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$102(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    .end local v0    # "vh":Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;

    .line 74
    .restart local v0    # "vh":Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;
    :goto_0
    # getter for: Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->name:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$000(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 75
    # getter for: Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->name:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$000(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v3}, Lcom/maya/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    # getter for: Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->delete:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$100(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 77
    # getter for: Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->delete:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$100(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$1;-><init>(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    if-nez p1, :cond_1

    .line 90
    const-string v1, "maya_sdk_listview_bg_gray"

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 93
    :cond_1
    const-string v1, "maya_sdk_listview_bg_white"

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    :goto_1
    return-object p2
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    .line 31
    return-void
.end method
