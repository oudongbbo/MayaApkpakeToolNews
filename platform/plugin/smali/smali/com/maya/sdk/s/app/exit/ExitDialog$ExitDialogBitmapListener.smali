.class Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/exit/ExitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitDialogBitmapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;

    .line 145
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 149
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->URL_EXIT_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->access$400(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->URL_EXIT_URL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void
.end method
