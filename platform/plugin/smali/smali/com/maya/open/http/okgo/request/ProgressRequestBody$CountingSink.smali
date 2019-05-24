.class public final Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;
.super Lcom/maya/open/http/okio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okgo/request/ProgressRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CountingSink"
.end annotation


# instance fields
.field private bytesWritten:J

.field private contentLength:J

.field private lastRefreshUiTime:J

.field private lastWriteBytes:J

.field final synthetic this$0:Lcom/maya/open/http/okgo/request/ProgressRequestBody;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okgo/request/ProgressRequestBody;Lcom/maya/open/http/okio/Sink;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->this$0:Lcom/maya/open/http/okgo/request/ProgressRequestBody;

    .line 73
    invoke-direct {p0, p2}, Lcom/maya/open/http/okio/ForwardingSink;-><init>(Lcom/maya/open/http/okio/Sink;)V

    const-wide/16 p1, 0x0

    .line 67
    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    .line 68
    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    return-void
.end method


# virtual methods
.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 9

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/maya/open/http/okio/ForwardingSink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 79
    iget-wide v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->this$0:Lcom/maya/open/http/okgo/request/ProgressRequestBody;

    invoke-virtual {p1}, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    .line 80
    :cond_0
    iget-wide v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 84
    iget-wide v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    sub-long v0, p1, v0

    sget p3, Lcom/maya/open/http/okgo/OkGo;->REFRESH_TIME:I

    int-to-long v4, p3

    cmp-long p3, v0, v4

    if-gez p3, :cond_1

    iget-wide v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v4, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    cmp-long p3, v0, v4

    if-nez p3, :cond_4

    .line 86
    :cond_1
    iget-wide v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    cmp-long p3, p1, v2

    if-nez p3, :cond_2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 88
    :cond_2
    iget-wide v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v2, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastWriteBytes:J

    sub-long/2addr v0, v2

    .line 89
    div-long v7, v0, p1

    .line 90
    iget-object p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->this$0:Lcom/maya/open/http/okgo/request/ProgressRequestBody;

    iget-object p1, p1, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->listener:Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->this$0:Lcom/maya/open/http/okgo/request/ProgressRequestBody;

    iget-object v2, p1, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->listener:Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;

    iget-wide v3, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v5, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    invoke-interface/range {v2 .. v8}, Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;->onRequestProgress(JJJ)V

    .line 92
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    .line 93
    iget-wide p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastWriteBytes:J

    :cond_4
    return-void
.end method
