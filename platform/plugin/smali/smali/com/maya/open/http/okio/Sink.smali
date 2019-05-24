.class public interface abstract Lcom/maya/open/http/okio/Sink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public abstract timeout()Lcom/maya/open/http/okio/Timeout;
.end method

.method public abstract write(Lcom/maya/open/http/okio/Buffer;J)V
.end method
