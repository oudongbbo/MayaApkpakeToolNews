.class Lcom/maya/sdk/framework/view/loading/LoadingSmile$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoadingSmile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/view/loading/LoadingSmile;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/view/loading/LoadingSmile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    .line 129
    iput-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$2;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 132
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 134
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 143
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 144
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 138
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 139
    return-void
.end method
