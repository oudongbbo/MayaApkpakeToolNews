.class Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;
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
    name = "ExitDialogBBSListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;

    .line 158
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 161
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_BBS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    const-string v1, "\u8bba\u575b\u5efa\u8bbe\u4e2d\uff0c\u5c3d\u60c5\u671f\u5f85"

    # invokes: Lcom/maya/sdk/s/app/exit/ExitDialog;->showToas(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->access$500(Lcom/maya/sdk/s/app/exit/ExitDialog;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->access$400(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_BBS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void
.end method
