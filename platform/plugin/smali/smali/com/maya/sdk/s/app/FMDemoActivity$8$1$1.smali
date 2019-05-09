.class Lcom/maya/sdk/s/app/FMDemoActivity$8$1$1;
.super Ljava/lang/Object;
.source "FMDemoActivity.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMDemoActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/s/app/FMDemoActivity$8$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMDemoActivity$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/s/app/FMDemoActivity$8$1;

    .line 257
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$8$1$1;->this$2:Lcom/maya/sdk/s/app/FMDemoActivity$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity$8$1$1;->this$2:Lcom/maya/sdk/s/app/FMDemoActivity$8$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMDemoActivity$8$1;->this$1:Lcom/maya/sdk/s/app/FMDemoActivity$8;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMDemoActivity$8;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 272
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity$8$1$1;->this$2:Lcom/maya/sdk/s/app/FMDemoActivity$8$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMDemoActivity$8$1;->this$1:Lcom/maya/sdk/s/app/FMDemoActivity$8;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMDemoActivity$8;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 261
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity$8$1$1;->this$2:Lcom/maya/sdk/s/app/FMDemoActivity$8$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMDemoActivity$8$1;->this$1:Lcom/maya/sdk/s/app/FMDemoActivity$8;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMDemoActivity$8;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/FMDemoActivity;->finish()V

    .line 262
    return-void
.end method
