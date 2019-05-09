.class public final Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
.super Ljava/lang/ref/WeakReference;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamAllocationReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;",
        ">;"
    }
.end annotation


# instance fields
.field public final callStackTrace:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V
    .locals 0
    .param p1, "referent"    # Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    .param p2, "callStackTrace"    # Ljava/lang/Object;

    .line 400
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 401
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;

    .line 402
    return-void
.end method
