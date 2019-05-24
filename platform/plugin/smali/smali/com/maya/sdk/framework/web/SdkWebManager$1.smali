.class final Lcom/maya/sdk/framework/web/SdkWebManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
.field final synthetic a:Lcom/maya/sdk/framework/interfaces/ResultCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebManager$1;->a:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebManager$1;->a:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebManager$1;->a:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {p1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    :cond_0
    return-void
.end method
