.class Lcom/maya/sdk/framework/view/common/CountDownView$1;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/view/common/CountDownView;-><init>(Landroid/widget/TextView;ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/view/common/CountDownView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$defaultText:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/view/common/CountDownView;Landroid/widget/TextView;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/view/common/CountDownView;

    .line 21
    iput-object p1, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->this$0:Lcom/maya/sdk/framework/view/common/CountDownView;

    iput-object p2, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$defaultText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$defaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$view:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->this$0:Lcom/maya/sdk/framework/view/common/CountDownView;

    const-string v3, "maya_login_text_black"

    const-string v4, "color"

    iget-object v5, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/maya/sdk/framework/view/common/CountDownView;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I
    invoke-static {v2, v3, v4, v5}, Lcom/maya/sdk/framework/view/common/CountDownView;->access$000(Lcom/maya/sdk/framework/view/common/CountDownView;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$view:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 42
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 43
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$view:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 33
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 34
    return-void
.end method

.method public onTick(I)V
    .locals 6
    .param p1, "delta"    # I

    .line 25
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$view:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->this$0:Lcom/maya/sdk/framework/view/common/CountDownView;

    const-string v3, "maya_countdown_number"

    const-string v4, "color"

    iget-object v5, p0, Lcom/maya/sdk/framework/view/common/CountDownView$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/maya/sdk/framework/view/common/CountDownView;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I
    invoke-static {v2, v3, v4, v5}, Lcom/maya/sdk/framework/view/common/CountDownView;->access$000(Lcom/maya/sdk/framework/view/common/CountDownView;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    return-void
.end method
