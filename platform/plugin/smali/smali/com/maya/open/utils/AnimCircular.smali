.class public Lcom/maya/open/utils/AnimCircular;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;,
        Lcom/maya/open/utils/AnimCircular$VisibleBuilder;,
        Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;
    }
.end annotation


# static fields
.field public static final MINI_RADIUS:I = 0x0

.field public static final PERFECT_MILLS:J = 0x26aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fullActivity(Landroid/app/Activity;Landroid/view/View;)Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;
    .locals 1

    .line 293
    new-instance v0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object v0
.end method

.method public static hide(Landroid/view/View;)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 2

    .line 288
    new-instance v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method

.method public static show(Landroid/view/View;)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 2

    .line 283
    new-instance v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method
