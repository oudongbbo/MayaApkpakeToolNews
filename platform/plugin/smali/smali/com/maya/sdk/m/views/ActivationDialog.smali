.class public Lcom/maya/sdk/m/views/ActivationDialog;
.super Landroid/app/Dialog;
.source "ActivationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activationCodeInput:Landroid/widget/EditText;

.field private activationCodeTips:Landroid/widget/TextView;

.field private activationContent:Landroid/widget/LinearLayout;

.field private codeID:Ljava/lang/String;

.field private codeQQ:Ljava/lang/String;

.field private codeWebUrl:Ljava/lang/String;

.field private doubleGetCodeFromQQ:Landroid/widget/RelativeLayout;

.field private doubleGetCodeFromWeb:Landroid/widget/RelativeLayout;

.field private enterGame:Landroid/widget/Button;

.field private gameName:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mrepManager:Lcom/maya/sdk/m/http/MRepManager;

.field private mreqManager:Lcom/maya/sdk/m/http/MReqManager;

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeWebUrl:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeQQ:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeID:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 58
    .local v0, "manager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 59
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->screenWidth:I

    .line 62
    new-instance v2, Lcom/maya/sdk/m/http/MRepManager;

    iget-object v3, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/maya/sdk/m/http/MRepManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mrepManager:Lcom/maya/sdk/m/http/MRepManager;

    .line 63
    new-instance v2, Lcom/maya/sdk/m/http/MReqManager;

    iget-object v3, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/maya/sdk/m/http/MReqManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mreqManager:Lcom/maya/sdk/m/http/MReqManager;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/m/views/ActivationDialog;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/views/ActivationDialog;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/m/views/ActivationDialog;->controlErrorTips(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/maya/sdk/m/views/ActivationDialog;)Lcom/maya/sdk/m/http/MRepManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/ActivationDialog;

    .line 27
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mrepManager:Lcom/maya/sdk/m/http/MRepManager;

    return-object v0
.end method

.method private controlErrorTips(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isError"    # Z
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->activationCodeTips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->activationCodeTips:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->activationCodeInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->activationCodeTips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :goto_0
    return-void
.end method

.method private initViews()V
    .locals 3

    .line 93
    const-string v0, "activation_content"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->activationContent:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->activationContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->setDialogFrame(Landroid/widget/LinearLayout;)V

    .line 96
    const-string v0, "activation_gamename"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->gameName:Landroid/widget/TextView;

    .line 97
    const-string v0, "activation_edittext_input"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->activationCodeInput:Landroid/widget/EditText;

    .line 98
    const-string v0, "activation_text_tips"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->activationCodeTips:Landroid/widget/TextView;

    .line 99
    const-string v0, "maya_activation_entergame"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->enterGame:Landroid/widget/Button;

    .line 102
    const-string v0, "maya_activation_getcode_web"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->doubleGetCodeFromWeb:Landroid/widget/RelativeLayout;

    .line 103
    const-string v0, "maya_activation_getcode_qq"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->doubleGetCodeFromQQ:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->enterGame:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->doubleGetCodeFromWeb:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->doubleGetCodeFromQQ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method private joinQQGroup(Ljava/lang/String;)Z
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, "localIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v1, 0x1

    return v1

    .line 246
    :catch_0
    move-exception v1

    .line 248
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    const-string v2, "\u672a\u5b89\u88c5\u624bQ\u6216\u5b89\u88c5\u7684\u7248\u672c\u4e0d\u652f\u6301"

    invoke-direct {p0, v2}, Lcom/maya/sdk/m/views/ActivationDialog;->showToast(Ljava/lang/String;)V

    .line 251
    .end local v1    # "localException":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private setDialogFrame(Landroid/widget/LinearLayout;)V
    .locals 10
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    const-wide v2, 0x3fe851eb851eb852L    # 0.76

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/m/views/ActivationDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/m/views/ActivationDialog;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v2, v8

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 128
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/m/views/ActivationDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/m/views/ActivationDialog;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v2, v8

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 131
    :goto_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->enterGame:Landroid/widget/Button;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->activationCodeInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "activeCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    const-string v1, "\u6fc0\u6d3b\u7801\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    invoke-direct {p0, v1}, Lcom/maya/sdk/m/views/ActivationDialog;->showToast(Ljava/lang/String;)V

    .line 156
    return-void

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    const-string v1, "\u6fc0\u6d3bID\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5\u63a5\u53e3\u6570\u636e"

    invoke-direct {p0, v1}, Lcom/maya/sdk/m/views/ActivationDialog;->showToast(Ljava/lang/String;)V

    .line 160
    return-void

    .line 163
    :cond_1
    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/maya/sdk/m/views/ActivationDialog;->controlErrorTips(ZLjava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mreqManager:Lcom/maya/sdk/m/http/MReqManager;

    iget-object v4, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeID:Ljava/lang/String;

    new-instance v5, Lcom/maya/sdk/m/views/ActivationDialog$1;

    invoke-direct {v5, p0}, Lcom/maya/sdk/m/views/ActivationDialog$1;-><init>(Lcom/maya/sdk/m/views/ActivationDialog;)V

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/maya/sdk/m/http/MReqManager;->requestActive(Ljava/lang/String;Ljava/lang/String;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 213
    .end local v0    # "activeCode":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->doubleGetCodeFromWeb:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeWebUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    const-string v0, "\u6682\u65f6\u8fd8\u6ca1\u6709\u6fc0\u6d3b\u7801\u5b98\u7f51\u5730\u5740"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeWebUrl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v2, v4}, Lcom/maya/sdk/m/utils/MsdkUtils;->showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 222
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->doubleGetCodeFromQQ:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_6

    .line 223
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeQQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    const-string v0, "\u6682\u65f6\u65e0\u6cd5\u4eceQQ\u7fa4\u83b7\u53d6\u6fc0\u6d3b\u7801"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeQQ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->joinQQGroup(Ljava/lang/String;)Z

    .line 231
    :cond_6
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 76
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/maya/sdk/m/views/ActivationDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maya_dialog_theme_main"

    const-string v2, "style"

    iget-object v3, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 79
    const-string v0, "maya_dialog_activation"

    const-string v1, "layout"

    iget-object v2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lcom/maya/sdk/m/views/ActivationDialog;->initViews()V

    .line 83
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog;->gameName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->setCancelable(Z)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/ActivationDialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    return-void
.end method

.method public setActivateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "codeId"    # Ljava/lang/String;
    .param p2, "codeQQ"    # Ljava/lang/String;
    .param p3, "codeWeb"    # Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeWebUrl:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeQQ:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/maya/sdk/m/views/ActivationDialog;->codeID:Ljava/lang/String;

    .line 71
    return-void
.end method
