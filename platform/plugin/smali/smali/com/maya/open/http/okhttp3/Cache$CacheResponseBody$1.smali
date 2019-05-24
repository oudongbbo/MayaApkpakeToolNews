.class Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody$1;
.super Lcom/maya/open/http/okio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody$1;->this$0:Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;

    iput-object p3, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lcom/maya/open/http/okio/ForwardingSource;-><init>(Lcom/maya/open/http/okio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 753
    invoke-super {p0}, Lcom/maya/open/http/okio/ForwardingSource;->close()V

    return-void
.end method
