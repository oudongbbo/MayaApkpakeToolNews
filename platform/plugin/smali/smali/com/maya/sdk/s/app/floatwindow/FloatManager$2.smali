.class Lcom/maya/sdk/s/app/floatwindow/FloatManager$2;
.super Ljava/lang/Object;
.source "FloatManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/floatwindow/FloatManager;->AnimationScale_In()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 620
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$2;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 630
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$2;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_out:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->access$1800(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 627
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 623
    return-void
.end method
