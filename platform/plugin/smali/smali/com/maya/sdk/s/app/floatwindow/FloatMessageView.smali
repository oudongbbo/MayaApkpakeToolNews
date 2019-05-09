.class public Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;
.super Landroid/widget/LinearLayout;
.source "FloatMessageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;
    }
.end annotation


# static fields
.field private static instance:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;


# instance fields
.field private FloatView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private maya_float_message_layout:Landroid/widget/LinearLayout;

.field private maya_float_message_txt:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->instance:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->initView()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->initView()V

    .line 49
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;
    .locals 1
    .param p0, "contextActivity"    # Landroid/app/Activity;

    .line 19
    sget-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->instance:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->instance:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    .line 22
    :cond_0
    sget-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->instance:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->FloatView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "maya_float_message_view"

    const-string v3, "layout"

    iget-object v4, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->FloatView:Landroid/view/View;

    .line 74
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->FloatView:Landroid/view/View;

    const-string v1, "maya_float_message_layout"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->maya_float_message_layout:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->FloatView:Landroid/view/View;

    const-string v1, "maya_float_message_txt"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->maya_float_message_txt:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->maya_float_message_txt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 77
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->maya_float_message_txt:Landroid/widget/TextView;

    const-string v1, "maya_float_window_new_message"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getPopWindow(Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;)Landroid/view/View;
    .locals 4
    .param p1, "orientation"    # Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    .line 55
    sget-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->LEFT:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    if-ne p1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->maya_float_message_layout:Landroid/widget/LinearLayout;

    const-string v1, "maya_floatbutton_message_left"

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->maya_float_message_layout:Landroid/widget/LinearLayout;

    const-string v1, "maya_floatbutton_message_right"

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 63
    :goto_0
    return-object p0
.end method
