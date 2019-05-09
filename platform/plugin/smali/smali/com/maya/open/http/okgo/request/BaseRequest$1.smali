.class Lcom/maya/open/http/okgo/request/BaseRequest$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okgo/request/BaseRequest;->wrapRequestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okgo/request/BaseRequest;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okgo/request/BaseRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 323
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest$1;, "Lcom/maya/open/http/okgo/request/BaseRequest$1;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest$1;->this$0:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestProgress(JJJ)V
    .locals 10
    .param p1, "bytesWritten"    # J
    .param p3, "contentLength"    # J
    .param p5, "networkSpeed"    # J

    .line 326
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest$1;, "Lcom/maya/open/http/okgo/request/BaseRequest$1;"
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getInstance()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    new-instance v9, Lcom/maya/open/http/okgo/request/BaseRequest$1$1;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/maya/open/http/okgo/request/BaseRequest$1$1;-><init>(Lcom/maya/open/http/okgo/request/BaseRequest$1;JJJ)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method
