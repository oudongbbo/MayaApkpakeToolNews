.class public Lcom/maya/sdk/framework/view/loading/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private isDefaultTimeEnd:Z

.field private isUserTimeEnd:Z

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mLoading:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

.field private mMessage:Ljava/lang/CharSequence;

.field private mTextView:Landroid/widget/TextView;

.field private showTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->showTime:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isDefaultTimeEnd:Z

    .line 25
    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isUserTimeEnd:Z

    .line 126
    new-instance v0, Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;-><init>(Lcom/maya/sdk/framework/view/loading/LoadingDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->showTime:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isDefaultTimeEnd:Z

    .line 25
    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isUserTimeEnd:Z

    .line 126
    new-instance v0, Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog$1;-><init>(Lcom/maya/sdk/framework/view/loading/LoadingDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/framework/view/loading/LoadingDialog;)Lcom/maya/sdk/framework/view/loading/LoadingSmile;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    .line 17
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/framework/view/loading/LoadingDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    .line 17
    iget v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->showTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/maya/sdk/framework/view/loading/LoadingDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/loading/LoadingDialog;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isDefaultTimeEnd:Z

    return p1
.end method

.method static synthetic access$300(Lcom/maya/sdk/framework/view/loading/LoadingDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    .line 17
    iget-boolean v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isUserTimeEnd:Z

    return v0
.end method

.method private resetAttr()V
    .locals 1

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isDefaultTimeEnd:Z

    .line 157
    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isUserTimeEnd:Z

    .line 158
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isDefaultTimeEnd:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->stopAnim()V

    .line 115
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 117
    invoke-direct {p0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->resetAttr()V

    goto :goto_0

    .line 121
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isUserTimeEnd:Z

    .line 123
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maya_dialog_theme_main"

    const-string v2, "style"

    iget-object v3, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 45
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "fatherView":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 49
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v2, "child":Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {v4, v5}, Lcom/maya/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v6, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/maya/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v3, "childLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 53
    iget-object v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v1, v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 54
    .local v1, "padding":I
    const-string v5, "maya_sdk_loading"

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v5

    .line 55
    .local v5, "bg":I
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 56
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v6, Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    iget-object v7, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    .line 61
    iget-object v6, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->setId(I)V

    .line 62
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v7, v8}, Lcom/maya/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v9, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v9, v8}, Lcom/maya/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v6, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 64
    const/16 v4, 0xe

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    iget-object v7, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    invoke-virtual {v2, v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    .line 69
    iget-object v7, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    const-string v8, "maya_loading"

    iget-object v9, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v7, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    const-string v8, "maya_white"

    iget-object v9, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/maya/sdk/framework/utils/CommonUtil;->getColorByName(Ljava/lang/String;Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v7, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    invoke-virtual {v8}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->getId()I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    iget-object v4, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->setContentView(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public setLoadingMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 83
    iput-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    .line 85
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setShowTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 94
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 96
    iput p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->showTime:I

    .line 99
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 106
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 107
    return-void
.end method
