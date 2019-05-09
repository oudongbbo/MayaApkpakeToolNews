.class public Lcom/maya/open/http/okhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lcom/maya/open/http/okhttp3/ResponseBody;

.field cacheResponse:Lcom/maya/open/http/okhttp3/Response;

.field code:I

.field handshake:Lcom/maya/open/http/okhttp3/Handshake;

.field headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Lcom/maya/open/http/okhttp3/Response;

.field priorResponse:Lcom/maya/open/http/okhttp3/Response;

.field protocol:Lcom/maya/open/http/okhttp3/Protocol;

.field receivedResponseAtMillis:J

.field request:Lcom/maya/open/http/okhttp3/Request;

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const/4 v0, -0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->code:I

    .line 304
    new-instance v0, Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 305
    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const/4 v0, -0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->code:I

    .line 308
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response;->request:Lcom/maya/open/http/okhttp3/Request;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->request:Lcom/maya/open/http/okhttp3/Request;

    .line 309
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 310
    iget v0, p1, Lcom/maya/open/http/okhttp3/Response;->code:I

    iput v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->code:I

    .line 311
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    .line 313
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response;->headers:Lcom/maya/open/http/okhttp3/Headers;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Headers;->newBuilder()Lcom/maya/open/http/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 314
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response;->body:Lcom/maya/open/http/okhttp3/ResponseBody;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->body:Lcom/maya/open/http/okhttp3/ResponseBody;

    .line 315
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response;->networkResponse:Lcom/maya/open/http/okhttp3/Response;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->networkResponse:Lcom/maya/open/http/okhttp3/Response;

    .line 316
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response;->cacheResponse:Lcom/maya/open/http/okhttp3/Response;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->cacheResponse:Lcom/maya/open/http/okhttp3/Response;

    .line 317
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response;->priorResponse:Lcom/maya/open/http/okhttp3/Response;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->priorResponse:Lcom/maya/open/http/okhttp3/Response;

    .line 318
    iget-wide v0, p1, Lcom/maya/open/http/okhttp3/Response;->sentRequestAtMillis:J

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 319
    iget-wide v0, p1, Lcom/maya/open/http/okhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 320
    return-void
.end method

.method private checkPriorResponse(Lcom/maya/open/http/okhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 412
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response;->body:Lcom/maya/open/http/okhttp3/ResponseBody;

    if-nez v0, :cond_0

    .line 415
    return-void

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSupportResponse(Ljava/lang/String;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 394
    iget-object v0, p2, Lcom/maya/open/http/okhttp3/Response;->body:Lcom/maya/open/http/okhttp3/ResponseBody;

    if-nez v0, :cond_3

    .line 396
    iget-object v0, p2, Lcom/maya/open/http/okhttp3/Response;->networkResponse:Lcom/maya/open/http/okhttp3/Response;

    if-nez v0, :cond_2

    .line 398
    iget-object v0, p2, Lcom/maya/open/http/okhttp3/Response;->cacheResponse:Lcom/maya/open/http/okhttp3/Response;

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p2, Lcom/maya/open/http/okhttp3/Response;->priorResponse:Lcom/maya/open/http/okhttp3/Response;

    if-nez v0, :cond_0

    .line 403
    return-void

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 362
    return-object p0
.end method

.method public body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 0
    .param p1, "body"    # Lcom/maya/open/http/okhttp3/ResponseBody;

    .line 377
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->body:Lcom/maya/open/http/okhttp3/ResponseBody;

    .line 378
    return-object p0
.end method

.method public build()Lcom/maya/open/http/okhttp3/Response;
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->request:Lcom/maya/open/http/okhttp3/Request;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    if-eqz v0, :cond_1

    .line 430
    iget v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->code:I

    if-ltz v0, :cond_0

    .line 431
    new-instance v0, Lcom/maya/open/http/okhttp3/Response;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/Response;-><init>(Lcom/maya/open/http/okhttp3/Response$Builder;)V

    return-object v0

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 1
    .param p1, "cacheResponse"    # Lcom/maya/open/http/okhttp3/Response;

    .line 388
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lcom/maya/open/http/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/maya/open/http/okhttp3/Response;)V

    .line 389
    :cond_0
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->cacheResponse:Lcom/maya/open/http/okhttp3/Response;

    .line 390
    return-object p0
.end method

.method public code(I)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 0
    .param p1, "code"    # I

    .line 333
    iput p1, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->code:I

    .line 334
    return-object p0
.end method

.method public handshake(Lcom/maya/open/http/okhttp3/Handshake;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 0
    .param p1, "handshake"    # Lcom/maya/open/http/okhttp3/Handshake;

    .line 343
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    .line 344
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 353
    return-object p0
.end method

.method public headers(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 1
    .param p1, "headers"    # Lcom/maya/open/http/okhttp3/Headers;

    .line 372
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Headers;->newBuilder()Lcom/maya/open/http/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 373
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 338
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 339
    return-object p0
.end method

.method public networkResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 1
    .param p1, "networkResponse"    # Lcom/maya/open/http/okhttp3/Response;

    .line 382
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lcom/maya/open/http/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/maya/open/http/okhttp3/Response;)V

    .line 383
    :cond_0
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->networkResponse:Lcom/maya/open/http/okhttp3/Response;

    .line 384
    return-object p0
.end method

.method public priorResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 0
    .param p1, "priorResponse"    # Lcom/maya/open/http/okhttp3/Response;

    .line 406
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/Response$Builder;->checkPriorResponse(Lcom/maya/open/http/okhttp3/Response;)V

    .line 407
    :cond_0
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->priorResponse:Lcom/maya/open/http/okhttp3/Response;

    .line 408
    return-object p0
.end method

.method public protocol(Lcom/maya/open/http/okhttp3/Protocol;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 0
    .param p1, "protocol"    # Lcom/maya/open/http/okhttp3/Protocol;

    .line 328
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 329
    return-object p0
.end method

.method public receivedResponseAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 0
    .param p1, "receivedResponseAtMillis"    # J

    .line 423
    iput-wide p1, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 424
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 367
    return-object p0
.end method

.method public request(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 0
    .param p1, "request"    # Lcom/maya/open/http/okhttp3/Request;

    .line 323
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->request:Lcom/maya/open/http/okhttp3/Request;

    .line 324
    return-object p0
.end method

.method public sentRequestAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 0
    .param p1, "sentRequestAtMillis"    # J

    .line 418
    iput-wide p1, p0, Lcom/maya/open/http/okhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 419
    return-object p0
.end method
