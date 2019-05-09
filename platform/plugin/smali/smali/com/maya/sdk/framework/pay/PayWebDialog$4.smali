.class Lcom/maya/sdk/framework/pay/PayWebDialog$4;
.super Ljava/lang/Object;
.source "PayWebDialog.java"

# interfaces
.implements Lcom/maya/sdk/framework/web/SdkWebCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/pay/PayWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/pay/PayWebDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;

    .line 224
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 246
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 251
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    # invokes: Lcom/maya/sdk/framework/pay/PayWebDialog;->showToast(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$1000(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    .line 257
    goto :goto_1

    .line 256
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 256
    :goto_2
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    # invokes: Lcom/maya/sdk/framework/pay/PayWebDialog;->showToast(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$1000(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    .line 257
    throw v0
.end method

.method public loadFinish()V
    .locals 1

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->show()V

    .line 238
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    # invokes: Lcom/maya/sdk/framework/pay/PayWebDialog;->closeLoading()V
    invoke-static {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$900(Lcom/maya/sdk/framework/pay/PayWebDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public loadStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    # invokes: Lcom/maya/sdk/framework/pay/PayWebDialog;->showLoading()V
    invoke-static {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$700(Lcom/maya/sdk/framework/pay/PayWebDialog;)V

    .line 228
    return-void
.end method

.method public loading(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 231
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/framework/pay/PayWebDialog;->setLoadingMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$800(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    .line 232
    return-void
.end method
