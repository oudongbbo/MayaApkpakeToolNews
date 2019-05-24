.class Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/view/common/MarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    invoke-static {v0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->a(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)F

    move-result v0

    iget-object v1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    invoke-static {v1}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->b(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    iget-object v2, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    invoke-static {v2}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->c(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->a(Lcom/maya/sdk/framework/view/common/MarqueeTextView;F)F

    .line 122
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->invalidate()V

    .line 123
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    invoke-static {v0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->d(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v2, 0x1f4

    .line 124
    invoke-virtual {p0, v1, v2, v3}, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    iget-object v2, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    invoke-static {v2}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->a(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)F

    move-result v2

    iget-object v3, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    invoke-static {v3}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->e(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->a(Lcom/maya/sdk/framework/view/common/MarqueeTextView;F)F

    .line 128
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->invalidate()V

    .line 129
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->a:Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    invoke-static {v0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->d(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v2, 0x1e

    .line 130
    invoke-virtual {p0, v1, v2, v3}, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
