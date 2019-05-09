.class Lcom/maya/sdk/framework/web/SdkWebDialog$3;
.super Landroid/os/Handler;
.source "SdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/web/SdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 170
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$3;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 174
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 175
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$3;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$200(Lcom/maya/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u5373\u5c06\u5173\u95ed.."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$3;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object v0, v0, Lcom/maya/sdk/framework/web/SdkWebDialog;->closeHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 178
    return-void
.end method
