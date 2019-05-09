.class final Lcom/maya/open/http/okio/Timeout$1;
.super Lcom/maya/open/http/okio/Timeout;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okio/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/maya/open/http/okio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lcom/maya/open/http/okio/Timeout;
    .locals 0
    .param p1, "deadlineNanoTime"    # J

    .line 56
    return-object p0
.end method

.method public throwIfReached()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okio/Timeout;
    .locals 0
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 52
    return-object p0
.end method
