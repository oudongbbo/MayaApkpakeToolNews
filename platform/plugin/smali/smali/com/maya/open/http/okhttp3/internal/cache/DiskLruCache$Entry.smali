.class final Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field final cleanFiles:[Ljava/io/File;

.field currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

.field final dirtyFiles:[Ljava/io/File;

.field final key:Ljava/lang/String;

.field final lengths:[J

.field readable:Z

.field sequenceNumber:J

.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .locals 7
    .param p2, "key"    # Ljava/lang/String;

    .line 976
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 979
    iget v0, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    .line 980
    iget v0, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 981
    iget v0, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 985
    .local v0, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 986
    .local v1, "truncateTo":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 987
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 988
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 989
    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 991
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 986
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 993
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1018
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method setLengths([Ljava/lang/String;)V
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 997
    array-length v0, p1

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ne v0, v1, :cond_1

    .line 1002
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1003
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1007
    .end local v0    # "i":I
    :cond_0
    nop

    .line 1008
    return-void

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 998
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method snapshot()Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 10

    .line 1027
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1029
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    iget v0, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Lcom/maya/open/http/okio/Source;

    .line 1030
    .local v0, "sources":[Lcom/maya/open/http/okio/Source;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [J

    .line 1032
    .local v7, "lengths":[J
    const/4 v8, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    iget v2, v2, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_0

    .line 1033
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/maya/open/http/okio/Source;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1035
    .end local v1    # "i":I
    :cond_0
    new-instance v9, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lcom/maya/open/http/okio/Source;[J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 1036
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Ljava/io/FileNotFoundException;
    nop

    .local v8, "i":I
    :goto_1
    move v2, v8

    .end local v8    # "i":I
    .local v2, "i":I
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    iget v3, v3, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_1

    .line 1039
    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 1040
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1038
    add-int/lit8 v8, v2, 0x1

    goto :goto_1

    .line 1048
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2, p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->removeEntry(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1050
    goto :goto_2

    .line 1049
    :catch_1
    move-exception v2

    .line 1051
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .line 1027
    .end local v0    # "sources":[Lcom/maya/open/http/okio/Source;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "lengths":[J
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method writeLengths(Lcom/maya/open/http/okio/BufferedSink;)V
    .locals 6
    .param p1, "writer"    # Lcom/maya/open/http/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1012
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 1013
    .local v3, "length":J
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/maya/open/http/okio/BufferedSink;

    .line 1012
    .end local v3    # "length":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1015
    :cond_0
    return-void
.end method
