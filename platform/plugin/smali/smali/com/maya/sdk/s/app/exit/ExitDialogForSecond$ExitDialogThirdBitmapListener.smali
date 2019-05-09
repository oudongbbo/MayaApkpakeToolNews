.class Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogThirdBitmapListener;
.super Ljava/lang/Object;
.source "ExitDialogForSecond.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitDialogThirdBitmapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    .line 193
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogThirdBitmapListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogThirdBitmapListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->access$200(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v0}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebManager;

    invoke-direct {v0}, Lcom/maya/sdk/framework/web/SdkWebManager;-><init>()V

    .line 202
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogThirdBitmapListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->access$300(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogThirdBitmapListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;
    invoke-static {v2}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->access$200(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v1}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/web/SdkWebManager;->showWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void
.end method
