.class Lcom/maya/sdk/s/core/SdkManager$9;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/core/SdkManager;->handleVisitordialogTips(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/core/SdkManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/SdkManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/core/SdkManager;

    .line 493
    iput-object p1, p0, Lcom/maya/sdk/s/core/SdkManager$9;->this$0:Lcom/maya/sdk/s/core/SdkManager;

    iput-object p2, p0, Lcom/maya/sdk/s/core/SdkManager$9;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 496
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$9;->this$0:Lcom/maya/sdk/s/core/SdkManager;

    iget-object v1, p0, Lcom/maya/sdk/s/core/SdkManager$9;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/core/SdkManager;->showFloat(Landroid/content/Context;)V

    .line 498
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 500
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
