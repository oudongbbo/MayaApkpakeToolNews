.class Lcom/maya/sdk/s/core/SdkManager$5;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/core/SdkManager;->showLoginDialog(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/core/SdkManager;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/SdkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/core/SdkManager;

    .line 337
    iput-object p1, p0, Lcom/maya/sdk/s/core/SdkManager$5;->this$0:Lcom/maya/sdk/s/core/SdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 340
    const/4 v0, 0x0

    sput-boolean v0, Lcom/maya/sdk/s/core/SdkManager;->isLoginShowing:Z

    .line 341
    return-void
.end method
