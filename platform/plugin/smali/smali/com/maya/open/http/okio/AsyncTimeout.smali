.class public Lcom/maya/open/http/okio/AsyncTimeout;
.super Lcom/maya/open/http/okio/Timeout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field static head:Lcom/maya/open/http/okio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lcom/maya/open/http/okio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/maya/open/http/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lcom/maya/open/http/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/maya/open/http/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/maya/open/http/okio/Timeout;-><init>()V

    return-void
.end method

.method static awaitTimeout()Lcom/maya/open/http/okio/AsyncTimeout;
    .locals 8

    .line 342
    sget-object v0, Lcom/maya/open/http/okio/AsyncTimeout;->head:Lcom/maya/open/http/okio/AsyncTimeout;

    iget-object v0, v0, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 347
    const-class v0, Lcom/maya/open/http/okio/AsyncTimeout;

    sget-wide v4, Lcom/maya/open/http/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 348
    sget-object v0, Lcom/maya/open/http/okio/AsyncTimeout;->head:Lcom/maya/open/http/okio/AsyncTimeout;

    iget-object v0, v0, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-wide v2, Lcom/maya/open/http/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    sget-object v1, Lcom/maya/open/http/okio/AsyncTimeout;->head:Lcom/maya/open/http/okio/AsyncTimeout;

    :cond_0
    return-object v1

    .line 353
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/maya/open/http/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    const-wide/32 v4, 0xf4240

    .line 359
    div-long v6, v2, v4

    mul-long v4, v4, v6

    sub-long/2addr v2, v4

    .line 361
    const-class v0, Lcom/maya/open/http/okio/AsyncTimeout;

    long-to-int v2, v2

    invoke-virtual {v0, v6, v7, v2}, Ljava/lang/Object;->wait(JI)V

    return-object v1

    .line 366
    :cond_2
    sget-object v2, Lcom/maya/open/http/okio/AsyncTimeout;->head:Lcom/maya/open/http/okio/AsyncTimeout;

    iget-object v3, v0, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    iput-object v3, v2, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    .line 367
    iput-object v1, v0, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    return-object v0
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lcom/maya/open/http/okio/AsyncTimeout;)Z
    .locals 3

    const-class v0, Lcom/maya/open/http/okio/AsyncTimeout;

    monitor-enter v0

    .line 127
    :try_start_0
    sget-object v1, Lcom/maya/open/http/okio/AsyncTimeout;->head:Lcom/maya/open/http/okio/AsyncTimeout;

    :goto_0
    if-eqz v1, :cond_1

    .line 128
    iget-object v2, v1, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    if-ne v2, p0, :cond_0

    .line 129
    iget-object v2, p0, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    iput-object v2, v1, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 131
    monitor-exit v0

    return p0

    .line 127
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 136
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v0

    throw p0
.end method

.method private remainingNanos(J)J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/maya/open/http/okio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lcom/maya/open/http/okio/AsyncTimeout;JZ)V
    .locals 6

    const-class v0, Lcom/maya/open/http/okio/AsyncTimeout;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/maya/open/http/okio/AsyncTimeout;->head:Lcom/maya/open/http/okio/AsyncTimeout;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-direct {v1}, Lcom/maya/open/http/okio/AsyncTimeout;-><init>()V

    sput-object v1, Lcom/maya/open/http/okio/AsyncTimeout;->head:Lcom/maya/open/http/okio/AsyncTimeout;

    .line 87
    new-instance v1, Lcom/maya/open/http/okio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lcom/maya/open/http/okio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Lcom/maya/open/http/okio/AsyncTimeout$Watchdog;->start()V

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/maya/open/http/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    const/4 p3, 0x0

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const/4 p3, 0x0

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/maya/open/http/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    :cond_1
    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    add-long/2addr p1, v1

    .line 96
    iput-wide p1, p0, Lcom/maya/open/http/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    .line 98
    invoke-virtual {p0}, Lcom/maya/open/http/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/maya/open/http/okio/AsyncTimeout;->timeoutAt:J

    .line 104
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/maya/open/http/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide p1

    .line 105
    sget-object p3, Lcom/maya/open/http/okio/AsyncTimeout;->head:Lcom/maya/open/http/okio/AsyncTimeout;

    .line 106
    :goto_1
    iget-object v3, p3, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    if-eqz v3, :cond_4

    iget-object v3, p3, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-direct {v3, v1, v2}, Lcom/maya/open/http/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_3

    goto :goto_2

    .line 105
    :cond_3
    iget-object p3, p3, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    goto :goto_1

    .line 107
    :cond_4
    :goto_2
    iget-object p1, p3, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    iput-object p1, p0, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    .line 108
    iput-object p0, p3, Lcom/maya/open/http/okio/AsyncTimeout;->next:Lcom/maya/open/http/okio/AsyncTimeout;

    .line 109
    sget-object p0, Lcom/maya/open/http/okio/AsyncTimeout;->head:Lcom/maya/open/http/okio/AsyncTimeout;

    if-ne p3, p0, :cond_5

    .line 110
    const-class p0, Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_5
    monitor-exit v0

    return-void

    .line 100
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 84
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final enter()V
    .locals 6

    .line 72
    iget-boolean v0, p0, Lcom/maya/open/http/okio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/maya/open/http/okio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    .line 74
    invoke-virtual {p0}, Lcom/maya/open/http/okio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 78
    iput-boolean v3, p0, Lcom/maya/open/http/okio/AsyncTimeout;->inQueue:Z

    .line 79
    invoke-static {p0, v0, v1, v2}, Lcom/maya/open/http/okio/AsyncTimeout;->scheduleTimeout(Lcom/maya/open/http/okio/AsyncTimeout;JZ)V

    return-void

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 284
    :cond_0
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method final exit(Z)V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 274
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final exit()Z
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/maya/open/http/okio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    iput-boolean v1, p0, Lcom/maya/open/http/okio/AsyncTimeout;->inQueue:Z

    .line 121
    invoke-static {p0}, Lcom/maya/open/http/okio/AsyncTimeout;->cancelScheduledTimeout(Lcom/maya/open/http/okio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 293
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final sink(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/Sink;
    .locals 1

    .line 159
    new-instance v0, Lcom/maya/open/http/okio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/http/okio/AsyncTimeout$1;-><init>(Lcom/maya/open/http/okio/AsyncTimeout;Lcom/maya/open/http/okio/Sink;)V

    return-object v0
.end method

.method public final source(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/Source;
    .locals 1

    .line 231
    new-instance v0, Lcom/maya/open/http/okio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/http/okio/AsyncTimeout$2;-><init>(Lcom/maya/open/http/okio/AsyncTimeout;Lcom/maya/open/http/okio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    return-void
.end method
