.class public abstract Lcom/maya/open/http/okio/ForwardingSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okio/Source;


# instance fields
.field private final delegate:Lcom/maya/open/http/okio/Source;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okio/Source;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 30
    iput-object p1, p0, Lcom/maya/open/http/okio/ForwardingSource;->delegate:Lcom/maya/open/http/okio/Source;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingSource;->delegate:Lcom/maya/open/http/okio/Source;

    invoke-interface {v0}, Lcom/maya/open/http/okio/Source;->close()V

    return-void
.end method

.method public final delegate()Lcom/maya/open/http/okio/Source;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingSource;->delegate:Lcom/maya/open/http/okio/Source;

    return-object v0
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingSource;->delegate:Lcom/maya/open/http/okio/Source;

    invoke-interface {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/maya/open/http/okio/ForwardingSource;->delegate:Lcom/maya/open/http/okio/Source;

    invoke-interface {v0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okio/ForwardingSource;->delegate:Lcom/maya/open/http/okio/Source;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
