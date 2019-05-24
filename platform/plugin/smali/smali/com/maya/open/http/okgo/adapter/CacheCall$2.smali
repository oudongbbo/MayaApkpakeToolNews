.class Lcom/maya/open/http/okgo/adapter/CacheCall$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

.field final synthetic val$cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

.field final synthetic val$call:Lcom/maya/open/http/okhttp3/Call;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$isFromCache:Z

.field final synthetic val$response:Lcom/maya/open/http/okhttp3/Response;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLcom/maya/open/http/okhttp3/Call;Ljava/lang/Exception;Lcom/maya/open/http/okgo/cache/CacheMode;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    iput-boolean p2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$isFromCache:Z

    iput-object p3, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$call:Lcom/maya/open/http/okhttp3/Call;

    iput-object p4, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$e:Ljava/lang/Exception;

    iput-object p5, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    iput-object p6, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$response:Lcom/maya/open/http/okhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 205
    iget-boolean v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$isFromCache:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$200(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$call:Lcom/maya/open/http/okhttp3/Call;

    iget-object v3, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v2, v3}, Lcom/maya/open/http/okgo/callback/AbsCallback;->onCacheError(Lcom/maya/open/http/okhttp3/Call;Ljava/lang/Exception;)V

    .line 207
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    sget-object v2, Lcom/maya/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/maya/open/http/okgo/cache/CacheMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    sget-object v2, Lcom/maya/open/http/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

    if-ne v0, v2, :cond_2

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$200(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okgo/callback/AbsCallback;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$200(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$call:Lcom/maya/open/http/okhttp3/Call;

    iget-object v3, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$response:Lcom/maya/open/http/okhttp3/Response;

    iget-object v4, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v2, v3, v4}, Lcom/maya/open/http/okgo/callback/AbsCallback;->onError(Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 212
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    sget-object v2, Lcom/maya/open/http/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

    if-eq v0, v2, :cond_2

    .line 213
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->this$0:Lcom/maya/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/maya/open/http/okgo/adapter/CacheCall;->access$200(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okgo/callback/AbsCallback;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method
