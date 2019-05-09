.class final Lcom/maya/sdk/framework/web/SdkWebManager$1;
.super Ljava/lang/Object;
.source "SdkWebManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/web/SdkWebManager;->showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sdkcallback:Lcom/maya/sdk/framework/interfaces/ResultCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebManager$1;->val$sdkcallback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "paramDialogInterface"    # Landroid/content/DialogInterface;

    .line 62
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebManager$1;->val$sdkcallback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebManager$1;->val$sdkcallback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 65
    :cond_0
    return-void
.end method
