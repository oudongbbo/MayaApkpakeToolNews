.class Lcom/maya/sdk/m/receiver/PushReceiver$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/receiver/PushReceiver$1$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/m/receiver/PushReceiver$1$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/receiver/PushReceiver$1$1;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1$1$1;->a:Lcom/maya/sdk/m/receiver/PushReceiver$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1$1$1;->a:Lcom/maya/sdk/m/receiver/PushReceiver$1$1;

    iget-object v0, v0, Lcom/maya/sdk/m/receiver/PushReceiver$1$1;->a:Lcom/maya/sdk/m/receiver/PushReceiver$1;

    iget-object v0, v0, Lcom/maya/sdk/m/receiver/PushReceiver$1;->b:Lcom/maya/sdk/m/receiver/PushReceiver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a8\u9001\u6570\u636e\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(Lcom/maya/sdk/m/receiver/PushReceiver;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1$1$1;->a:Lcom/maya/sdk/m/receiver/PushReceiver$1$1;

    iget-object v0, v0, Lcom/maya/sdk/m/receiver/PushReceiver$1$1;->a:Lcom/maya/sdk/m/receiver/PushReceiver$1;

    iget-object v0, v0, Lcom/maya/sdk/m/receiver/PushReceiver$1;->a:Lcom/maya/sdk/m/http/b;

    const-string v1, "error_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63a8\u9001\u6570\u636e\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/maya/sdk/m/http/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
