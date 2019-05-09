.class Lcom/maya/open/http/okgo/adapter/CacheCall$1;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okgo/adapter/CacheCall;->execute(Lcom/maya/open/http/okgo/callback/AbsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

.field final synthetic val$cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okgo/adapter/CacheCall;Lcom/maya/open/http/okgo/cache/CacheMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okgo/adapter/CacheCall;

    .line 119
    .local p0, "this":Lcom/maya/open/http/okgo/adapter/CacheCall$1;, "Lcom/maya/open/http/okgo/adapter/CacheCall$1;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    iput-object p2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->val$cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/maya/open/http/okhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 122
    .local p0, "this":Lcom/maya/open/http/okgo/adapter/CacheCall$1;, "Lcom/maya/open/http/okgo/adapter/CacheCall$1;"
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # getter for: Lcom/maya/open/http/okgo/adapter/CacheCall;->currentRetryCount:I
    invoke-static {v0}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$000(Lcom/maya/open/http/okgo/adapter/CacheCall;)I

    move-result v0

    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # getter for: Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;
    invoke-static {v1}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$100(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getRetryCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # operator++ for: Lcom/maya/open/http/okgo/adapter/CacheCall;->currentRetryCount:I
    invoke-static {v0}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$008(Lcom/maya/open/http/okgo/adapter/CacheCall;)I

    .line 125
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # getter for: Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;
    invoke-static {v0}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$100(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v0

    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Call;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->generateCall(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;

    move-result-object v0

    .line 126
    .local v0, "newCall":Lcom/maya/open/http/okhttp3/Call;
    invoke-interface {v0, p0}, Lcom/maya/open/http/okhttp3/Call;->enqueue(Lcom/maya/open/http/okhttp3/Callback;)V

    .line 127
    .end local v0    # "newCall":Lcom/maya/open/http/okhttp3/Call;
    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # getter for: Lcom/maya/open/http/okgo/adapter/CacheCall;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;
    invoke-static {v0}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$200(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/callback/AbsCallback;->parseError(Lcom/maya/open/http/okhttp3/Call;Ljava/lang/Exception;)V

    .line 130
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    invoke-static {v0, v1, p1, v2, p2}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$300(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method public onResponse(Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 6
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/Call;
    .param p2, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/maya/open/http/okgo/adapter/CacheCall$1;, "Lcom/maya/open/http/okgo/adapter/CacheCall$1;"
    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v0

    .line 140
    .local v0, "responseCode":I
    const/16 v1, 0x130

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->val$cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    sget-object v2, Lcom/maya/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/maya/open/http/okgo/cache/CacheMode;

    if-ne v1, v2, :cond_3

    .line 141
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # getter for: Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;
    invoke-static {v1}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$400(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/cache/CacheEntity;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    const-string v3, "\u670d\u52a1\u5668\u54cd\u5e94\u7801304\uff0c\u4f46\u662f\u5ba2\u6237\u7aef\u6ca1\u6709\u7f13\u5b58\uff01"

    invoke-static {v3}, Lcom/maya/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/maya/open/http/okgo/exception/OkGoException;

    move-result-object v3

    # invokes: Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    invoke-static {v1, v2, p1, p2, v3}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$300(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_1

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # getter for: Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;
    invoke-static {v1}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$400(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/cache/CacheEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 145
    .local v1, "data":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # getter for: Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;
    invoke-static {v3}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$400(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/cache/CacheEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;

    move-result-object v3

    .line 146
    .local v3, "headers":Lcom/maya/open/http/okgo/model/HttpHeaders;
    if-eqz v1, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # invokes: Lcom/maya/open/http/okgo/adapter/CacheCall;->sendSuccessResultCallback(ZLjava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    invoke-static {v4, v2, v1, p1, p2}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$500(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLjava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V

    goto :goto_1

    .line 148
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    const-string v5, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v5}, Lcom/maya/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/maya/open/http/okgo/exception/OkGoException;

    move-result-object v5

    # invokes: Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    invoke-static {v4, v2, p1, p2, v5}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$300(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 153
    .end local v1    # "data":Ljava/lang/Object;, "TT;"
    .end local v3    # "headers":Lcom/maya/open/http/okgo/model/HttpHeaders;
    :goto_1
    return-void

    .line 156
    :cond_3
    const/16 v1, 0x194

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_4

    goto :goto_3

    .line 162
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # invokes: Lcom/maya/open/http/okgo/adapter/CacheCall;->parseResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okgo/model/Response;
    invoke-static {v1, p2}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$600(Lcom/maya/open/http/okgo/adapter/CacheCall;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okgo/model/Response;

    move-result-object v1

    .line 163
    .local v1, "parseResponse":Lcom/maya/open/http/okgo/model/Response;, "Lcom/maya/open/http/okgo/model/Response<TT;>;"
    invoke-virtual {v1}, Lcom/maya/open/http/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v3

    .line 165
    .local v3, "data":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v5

    # invokes: Lcom/maya/open/http/okgo/adapter/CacheCall;->handleCache(Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/Object;)V
    invoke-static {v4, v5, v3}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$700(Lcom/maya/open/http/okgo/adapter/CacheCall;Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/Object;)V

    .line 167
    iget-object v4, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # invokes: Lcom/maya/open/http/okgo/adapter/CacheCall;->sendSuccessResultCallback(ZLjava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    invoke-static {v4, v2, v3, p1, p2}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$500(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLjava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "parseResponse":Lcom/maya/open/http/okgo/model/Response;, "Lcom/maya/open/http/okgo/model/Response<TT;>;"
    .end local v3    # "data":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 168
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    # invokes: Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    invoke-static {v3, v2, p1, p2, v1}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$300(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 157
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    const-string v3, "\u670d\u52a1\u5668\u6570\u636e\u5f02\u5e38!"

    invoke-static {v3}, Lcom/maya/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/maya/open/http/okgo/exception/OkGoException;

    move-result-object v3

    # invokes: Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    invoke-static {v1, v2, p1, p2, v3}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$300(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 158
    return-void
.end method
