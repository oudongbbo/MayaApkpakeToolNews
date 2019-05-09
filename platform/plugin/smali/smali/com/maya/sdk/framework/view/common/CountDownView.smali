.class public Lcom/maya/sdk/framework/view/common/CountDownView;
.super Ljava/lang/Object;
.source "CountDownView.java"


# instance fields
.field private countDownUtil:Lcom/maya/sdk/framework/model/CountDownTool;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;ILandroid/app/Activity;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "time"    # I
    .param p3, "activity"    # Landroid/app/Activity;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    .local v0, "defaultText":Ljava/lang/String;
    new-instance v1, Lcom/maya/sdk/framework/model/CountDownTool;

    invoke-direct {v1, p2}, Lcom/maya/sdk/framework/model/CountDownTool;-><init>(I)V

    iput-object v1, p0, Lcom/maya/sdk/framework/view/common/CountDownView;->countDownUtil:Lcom/maya/sdk/framework/model/CountDownTool;

    .line 21
    iget-object v1, p0, Lcom/maya/sdk/framework/view/common/CountDownView;->countDownUtil:Lcom/maya/sdk/framework/model/CountDownTool;

    new-instance v2, Lcom/maya/sdk/framework/view/common/CountDownView$1;

    invoke-direct {v2, p0, p1, p3, v0}, Lcom/maya/sdk/framework/view/common/CountDownView$1;-><init>(Lcom/maya/sdk/framework/view/common/CountDownView;Landroid/widget/TextView;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/model/CountDownTool;->setFeedBack(Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/framework/view/common/CountDownView;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/common/CountDownView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/app/Activity;

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/maya/sdk/framework/view/common/CountDownView;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method private getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "id":I
    :try_start_0
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 62
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const-string v2, "CountDownView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8d44\u6e90\u672a\u627e\u5230\uff1aname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method


# virtual methods
.method public startCountDown()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/CountDownView;->countDownUtil:Lcom/maya/sdk/framework/model/CountDownTool;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/model/CountDownTool;->startCountDown()V

    .line 49
    return-void
.end method

.method public stopCountDown()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/CountDownView;->countDownUtil:Lcom/maya/sdk/framework/model/CountDownTool;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/model/CountDownTool;->stopCountDown()V

    .line 53
    return-void
.end method
