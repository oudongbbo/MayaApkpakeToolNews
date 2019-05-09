.class final Lcom/maya/sdk/m/utils/MViewUtil$1;
.super Ljava/lang/Object;
.source "MViewUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/utils/MViewUtil;->showAndoridExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

.field final synthetic val$mMaterialDialog:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/maya/sdk/m/utils/MViewUtil$1;->val$mMaterialDialog:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    iput-object p2, p0, Lcom/maya/sdk/m/utils/MViewUtil$1;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/maya/sdk/m/utils/MViewUtil$1;->val$mMaterialDialog:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->dismiss()V

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/m/utils/MViewUtil$1;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/maya/sdk/m/utils/MViewUtil$1;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    const-string v1, "\u53d6\u6d88\u9000\u51fa"

    invoke-interface {v0, v1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
