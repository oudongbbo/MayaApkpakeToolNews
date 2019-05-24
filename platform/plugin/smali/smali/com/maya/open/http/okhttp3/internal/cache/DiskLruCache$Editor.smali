.class public final Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field final entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

.field final written:[Z


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 840
    iget-boolean p2, p2, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .line 936
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 937
    :try_start_0
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v1, p0, :cond_0

    .line 941
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->completeEdit(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;Z)V

    :cond_0
    const/4 v1, 0x1

    .line 943
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 944
    monitor-exit v0

    return-void

    .line 938
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 944
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abortUnlessCommitted()V
    .locals 3

    .line 948
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 949
    :try_start_0
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    .line 951
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->completeEdit(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public commit()V
    .locals 3

    .line 920
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 921
    :try_start_0
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_1

    .line 924
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    .line 925
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1, p0, v2}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->completeEdit(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 927
    :cond_0
    iput-boolean v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 928
    monitor-exit v0

    return-void

    .line 922
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 928
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method detach()V
    .locals 3

    .line 850
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    .line 851
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_0

    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    :cond_1
    return-void
.end method

.method public newSink(I)Lcom/maya/open/http/okio/Sink;
    .locals 3

    .line 888
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 889
    :try_start_0
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_2

    .line 892
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v1, p0, :cond_0

    .line 893
    invoke-static {}, Lcom/maya/open/http/okio/Okio;->blackhole()Lcom/maya/open/http/okio/Sink;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 898
    :cond_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    invoke-interface {v1, p1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/maya/open/http/okio/Sink;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    :try_start_2
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor$1;

    invoke-direct {v1, p0, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;Lcom/maya/open/http/okio/Sink;)V

    monitor-exit v0

    return-object v1

    .line 903
    :catch_0
    invoke-static {}, Lcom/maya/open/http/okio/Okio;->blackhole()Lcom/maya/open/http/okio/Sink;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 890
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 912
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public newSource(I)Lcom/maya/open/http/okio/Source;
    .locals 4

    .line 867
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 868
    :try_start_0
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_2

    .line 871
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 875
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v3, v3, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object p1, v3, p1

    invoke-interface {v1, p1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/maya/open/http/okio/Source;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    .line 877
    :catch_0
    monitor-exit v0

    return-object v2

    .line 872
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    .line 869
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 879
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
