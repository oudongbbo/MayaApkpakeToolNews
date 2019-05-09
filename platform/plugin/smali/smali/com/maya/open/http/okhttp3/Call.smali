.class public interface abstract Lcom/maya/open/http/okhttp3/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/Call$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clone()Lcom/maya/open/http/okhttp3/Call;
.end method

.method public abstract enqueue(Lcom/maya/open/http/okhttp3/Callback;)V
.end method

.method public abstract execute()Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isExecuted()Z
.end method

.method public abstract request()Lcom/maya/open/http/okhttp3/Request;
.end method
