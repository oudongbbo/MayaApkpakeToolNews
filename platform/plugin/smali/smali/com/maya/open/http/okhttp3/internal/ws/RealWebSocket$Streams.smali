.class public abstract Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Lcom/maya/open/http/okio/BufferedSink;

.field public final source:Lcom/maya/open/http/okio/BufferedSource;


# direct methods
.method public constructor <init>(ZLcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;)V
    .locals 0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-boolean p1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    .line 579
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 580
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;->sink:Lcom/maya/open/http/okio/BufferedSink;

    return-void
.end method
