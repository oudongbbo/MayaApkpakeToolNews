.class Lcom/maya/sdk/m/http/MReqManager$1;
.super Ljava/lang/Object;
.source "MReqManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/http/MReqManager;->submitRoleInfos(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/http/MReqManager;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/http/MReqManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/http/MReqManager;

    .line 125
    iput-object p1, p0, Lcom/maya/sdk/m/http/MReqManager$1;->this$0:Lcom/maya/sdk/m/http/MReqManager;

    iput-object p2, p0, Lcom/maya/sdk/m/http/MReqManager$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 134
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager$1;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u89d2\u8272\u63d0\u4ea4\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 129
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager$1;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u89d2\u8272\u63d0\u4ea4\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    return-void
.end method
