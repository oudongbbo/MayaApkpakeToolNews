.class public Lcom/maya/open/http/okio/ForwardingTimeout;
.super Lcom/maya/open/http/okio/Timeout;
.source "SourceFile"


# instance fields
.field private delegate:Lcom/maya/open/http/okio/Timeout;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okio/Timeout;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/maya/open/http/okio/Timeout;-><init>()V

    if-eqz p1, :cond_0

    .line 30
    iput-object p1, p0, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate:Lcom/maya/open/http/okio/Timeout;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clearDeadline()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate:Lcom/maya/open/http/okio/Timeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Timeout;->clearDeadline()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate:Lcom/maya/open/http/okio/Timeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Timeout;->clearTimeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate:Lcom/maya/open/http/okio/Timeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate:Lcom/maya/open/http/okio/Timeout;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/Timeout;->deadlineNanoTime(J)Lcom/maya/open/http/okio/Timeout;

    move-result-object p1

    return-object p1
.end method

.method public final delegate()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate:Lcom/maya/open/http/okio/Timeout;

    return-object v0
.end method

.method public hasDeadline()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate:Lcom/maya/open/http/okio/Timeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Timeout;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final setDelegate(Lcom/maya/open/http/okio/Timeout;)Lcom/maya/open/http/okio/ForwardingTimeout;
    .locals 1

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate:Lcom/maya/open/http/okio/Timeout;

    return-object p0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public throwIfReached()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate:Lcom/maya/open/http/okio/Timeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Timeout;->throwIfReached()V

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate:Lcom/maya/open/http/okio/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okio/Timeout;

    move-result-object p1

    return-object p1
.end method

.method public timeoutNanos()J
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate:Lcom/maya/open/http/okio/Timeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
