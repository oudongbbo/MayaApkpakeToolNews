.class Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->go()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;


# direct methods
.method constructor <init>(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 149
    iget-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    invoke-static {p1}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->access$000(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    invoke-static {p1}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->access$100(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    invoke-static {p1}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->access$100(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_0
    iget-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    invoke-static {p1}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->access$200(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    invoke-static {p1}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->access$200(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;->onAnimationEnd()V

    :cond_1
    return-void
.end method
