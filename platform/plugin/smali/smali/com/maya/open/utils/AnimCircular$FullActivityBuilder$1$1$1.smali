.class Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1;


# direct methods
.method constructor <init>(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1$1;->this$2:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 259
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 261
    :try_start_0
    iget-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1$1;->this$2:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1;

    iget-object p1, p1, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1;->this$1:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;

    iget-object p1, p1, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->val$decorView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1$1;->this$2:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1;

    iget-object v0, v0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1;->this$1:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;

    iget-object v0, v0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 263
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
