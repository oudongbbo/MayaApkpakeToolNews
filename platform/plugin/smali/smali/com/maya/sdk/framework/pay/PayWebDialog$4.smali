.class Lcom/maya/sdk/framework/pay/PayWebDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
.field final synthetic a:Lcom/maya/sdk/framework/pay/PayWebDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/pay/PayWebDialog;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->a:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadError(Ljava/lang/String;)V
    .locals 2

    .line 246
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 251
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->a:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->a:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->e(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 253
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 256
    :goto_2
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->a:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-static {v1, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->e(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    .line 257
    throw v0
.end method

.method public loadFinish()V
    .locals 1

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->a:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->show()V

    .line 238
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->a:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-static {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->e(Lcom/maya/sdk/framework/pay/PayWebDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public loadStart(Ljava/lang/String;)V
    .locals 0

    .line 227
    iget-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->a:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-static {p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->d(Lcom/maya/sdk/framework/pay/PayWebDialog;)V

    return-void
.end method

.method public loading(I)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;->a:Lcom/maya/sdk/framework/pay/PayWebDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->d(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    return-void
.end method
