.class Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$2;
.super Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lcom/maya/open/http/okio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 317
    const-class v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;Lcom/maya/open/http/okio/Sink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;
    .param p2, "delegate"    # Lcom/maya/open/http/okio/Sink;

    .line 317
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$2;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0, p2}, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;-><init>(Lcom/maya/open/http/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .line 319
    nop

    .line 320
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$2;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    .line 321
    return-void
.end method
