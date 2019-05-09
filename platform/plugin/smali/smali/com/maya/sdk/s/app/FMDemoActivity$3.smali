.class Lcom/maya/sdk/s/app/FMDemoActivity$3;
.super Ljava/lang/Object;
.source "FMDemoActivity.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMDemoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/FMDemoActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/FMDemoActivity;

    .line 82
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$3;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 121
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity$3;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    const-string v1, "\u6ce8\u9500\u5931\u8d25\uff0c\u65e0\u9700\u64cd\u4f5c"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 87
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity$3;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    const-string v1, "\u6ce8\u9500\u6210\u529f\uff0c\u8bf7\u91cd\u65b0\u53d1\u8d77\u767b\u5f55\u64cd\u4f5c."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity$3;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    # getter for: Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;
    invoke-static {v0}, Lcom/maya/sdk/s/app/FMDemoActivity;->access$000(Lcom/maya/sdk/s/app/FMDemoActivity;)Lcom/maya/sdk/s/app/FMSdkCore;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$3;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    new-instance v2, Lcom/maya/sdk/s/app/FMDemoActivity$3$1;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$3$1;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/s/app/FMSdkCore;->userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 111
    return-void
.end method
