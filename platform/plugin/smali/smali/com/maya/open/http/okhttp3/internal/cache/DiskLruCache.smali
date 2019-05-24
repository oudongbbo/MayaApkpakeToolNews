.class public final Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;,
        Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;,
        Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field closed:Z

.field final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field final fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

.field hasJournalErrors:Z

.field initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field journalWriter:Lcom/maya/open/http/okio/BufferedSink;

.field final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field mostRecentRebuildFailed:Z

.field mostRecentTrimFailed:Z

.field private nextSequenceNumber:J

.field redundantOpCount:I

.field private size:J

.field final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 94
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 6

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 148
    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size:J

    .line 150
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 165
    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    .line 169
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$1;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    .line 198
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    .line 199
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    .line 200
    iput p3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 201
    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 202
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 203
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 204
    iput p4, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 205
    iput-wide p5, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 206
    iput-object p7, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private declared-synchronized checkNotClosed()V
    .locals 2

    monitor-enter p0

    .line 651
    :try_start_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 654
    monitor-exit p0

    return-void

    .line 652
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 650
    monitor-exit p0

    throw v0
.end method

.method public static create(Lcom/maya/open/http/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;
    .locals 17

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    if-lez p3, :cond_0

    .line 270
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x3c

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v2, "OkHttp DiskLruCache"

    const/4 v3, 0x1

    .line 271
    invoke-static {v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v16

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 273
    new-instance v10, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    move-object v2, v10

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;-><init>(Lcom/maya/open/http/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v10

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private newJournalWriter()Lcom/maya/open/http/okio/BufferedSink;
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lcom/maya/open/http/okio/Sink;

    move-result-object v0

    .line 317
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$2;

    invoke-direct {v1, p0, v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$2;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;Lcom/maya/open/http/okio/Sink;)V

    .line 323
    invoke-static {v1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method private processJournal()V
    .locals 8

    .line 370
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 371
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 373
    iget-object v2, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 374
    :goto_1
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_0

    .line 375
    iget-wide v4, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-object v2, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 378
    iput-object v2, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    .line 379
    :goto_2
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_2

    .line 380
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v4, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 381
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v4, v1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 383
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 8

    .line 277
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/maya/open/http/okio/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v0

    .line 279
    :try_start_0
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    const-string v6, "libcore.io.DiskLruCache"

    .line 284
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "1"

    .line 285
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 286
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 287
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    .line 288
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 296
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 305
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->exhausted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    goto :goto_1

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    :goto_1
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 289
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    .line 311
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 312
    throw v1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x20

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    add-int/lit8 v3, v1, 0x1

    .line 333
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 336
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "REMOVE"

    .line 337
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_1

    const-string v4, "REMOVE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 342
    :cond_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 345
    :cond_1
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    if-nez v4, :cond_2

    .line 347
    new-instance v4, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v4, p0, v3}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    .line 348
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v0, v2, :cond_3

    const-string v3, "CLEAN"

    .line 351
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_3

    const-string v3, "CLEAN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 353
    iput-boolean v1, v4, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    const/4 v0, 0x0

    .line 354
    iput-object v0, v4, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    .line 355
    invoke-virtual {v4, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    const-string v3, "DIRTY"

    .line 356
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_4

    const-string v3, "DIRTY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 357
    new-instance p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v4}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;)V

    iput-object p1, v4, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    goto :goto_0

    :cond_4
    if-ne v0, v2, :cond_5

    const-string v0, "READ"

    .line 358
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    .line 361
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    .line 714
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 716
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6

    monitor-enter p0

    .line 667
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->closed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 673
    iget-object v5, v4, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v5, :cond_1

    .line 674
    iget-object v4, v4, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 677
    :cond_2
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 678
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->close()V

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    .line 680
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    .line 668
    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 666
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized completeEdit(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;Z)V
    .locals 9

    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 537
    iget-object v1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 542
    iget-boolean v2, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 543
    :goto_0
    iget v3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 544
    iget-object v3, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 548
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v4, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 549
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    .line 546
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 555
    :cond_2
    :goto_1
    iget p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, p1, :cond_5

    .line 556
    iget-object p1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_3

    .line 558
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    invoke-interface {v2, p1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 559
    iget-object v2, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v1

    .line 560
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    invoke-interface {v3, p1, v2}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 561
    iget-object p1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v3, p1, v1

    .line 562
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    invoke-interface {p1, v2}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v5

    .line 563
    iget-object p1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aput-wide v5, p1, v1

    .line 564
    iget-wide v7, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size:J

    const/4 p1, 0x0

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size:J

    goto :goto_2

    .line 567
    :cond_3
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    invoke-interface {v2, p1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_5
    iget p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 572
    iput-object p1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    .line 573
    iget-boolean p1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_6

    .line 574
    iput-boolean v1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    .line 575
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 576
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    .line 577
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Lcom/maya/open/http/okio/BufferedSink;)V

    .line 578
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {p1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    if-eqz p2, :cond_7

    .line 580
    iget-wide p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    iput-wide p1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    goto :goto_3

    .line 583
    :cond_6
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 585
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    iget-object p2, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    .line 586
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {p1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 588
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {p1}, Lcom/maya/open/http/okio/BufferedSink;->flush()V

    .line 590
    iget-wide p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 591
    :cond_8
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    :cond_9
    monitor-exit p0

    return-void

    .line 538
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 535
    monitor-exit p0

    throw p1
.end method

.method public delete()V
    .locals 2

    .line 696
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->close()V

    .line 697
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;
    .locals 2

    const-wide/16 v0, -0x1

    .line 460
    invoke-virtual {p0, p1, v0, v1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized edit(Ljava/lang/String;J)Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;
    .locals 5

    monitor-enter p0

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 466
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 467
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    const/4 v1, 0x0

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    .line 469
    iget-wide v2, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v2, p2

    if-eqz v4, :cond_1

    .line 471
    :cond_0
    monitor-exit p0

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 473
    :try_start_1
    iget-object p2, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 474
    monitor-exit p0

    return-object v1

    .line 476
    :cond_2
    :try_start_2
    iget-boolean p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    if-eqz p2, :cond_3

    goto :goto_0

    .line 487
    :cond_3
    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 488
    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {p2}, Lcom/maya/open/http/okio/BufferedSink;->flush()V

    .line 490
    iget-boolean p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 491
    monitor-exit p0

    return-object v1

    :cond_4
    if-nez v0, :cond_5

    .line 495
    :try_start_3
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    .line 496
    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_5
    new-instance p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;)V

    .line 499
    iput-object p1, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 500
    monitor-exit p0

    return-object p1

    .line 482
    :cond_6
    :goto_0
    :try_start_4
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 483
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 463
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evictAll()V
    .locals 5

    monitor-enter p0

    .line 705
    :try_start_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 707
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 708
    invoke-virtual {p0, v4}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->removeEntry(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 710
    :cond_0
    iput-boolean v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 704
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 658
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 660
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 661
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 662
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 657
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 3

    monitor-enter p0

    .line 437
    :try_start_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 439
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 440
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 442
    iget-boolean v2, v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 445
    monitor-exit p0

    return-object v1

    .line 447
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 448
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 449
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 450
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    :cond_2
    monitor-exit p0

    return-object v0

    .line 442
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 436
    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 512
    :try_start_0
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize()V
    .locals 6

    monitor-enter p0

    .line 212
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 213
    monitor-exit p0

    return-void

    .line 217
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 227
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 229
    :try_start_2
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->readJournal()V

    .line 230
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->processJournal()V

    .line 231
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 234
    :try_start_3
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-virtual {v2, v3, v4, v0}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    .line 241
    :try_start_4
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    :try_start_5
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->closed:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->closed:Z

    .line 244
    throw v1

    .line 247
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 249
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 250
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 209
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 647
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method journalRebuildRequired()Z
    .locals 2

    .line 601
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 602
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized rebuildJournal()V
    .locals 6

    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->close()V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/maya/open/http/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 399
    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    const-string v1, "1"

    .line 400
    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 401
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->appVersion:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 402
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 403
    invoke-interface {v0, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 405
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 406
    iget-object v4, v3, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    const-string v4, "DIRTY"

    .line 407
    invoke-interface {v0, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 408
    iget-object v3, v3, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    .line 409
    invoke-interface {v0, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    goto :goto_0

    :cond_1
    const-string v4, "CLEAN"

    .line 411
    invoke-interface {v0, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 412
    iget-object v4, v3, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    .line 413
    invoke-virtual {v3, v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Lcom/maya/open/http/okio/BufferedSink;)V

    .line 414
    invoke-interface {v0, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 418
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->close()V

    .line 421
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 425
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 427
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    const/4 v0, 0x0

    .line 428
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    .line 429
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 430
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 418
    :try_start_3
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->close()V

    .line 419
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 392
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    .line 612
    :try_start_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 614
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 615
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 617
    monitor-exit p0

    return v0

    .line 618
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->removeEntry(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 619
    iget-wide v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 611
    monitor-exit p0

    throw p1
.end method

.method removeEntry(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;)Z
    .locals 6

    .line 624
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    :cond_0
    const/4 v0, 0x0

    .line 628
    :goto_0
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_1

    .line 629
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 630
    iget-wide v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-object v3, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size:J

    .line 631
    iget-object v1, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_1
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 635
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalWriter:Lcom/maya/open/http/okio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 636
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 639
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 0

    monitor-enter p0

    .line 520
    :try_start_0
    iput-wide p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 521
    iget-boolean p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialized:Z

    if-eqz p1, :cond_0

    .line 522
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 519
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 531
    :try_start_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 532
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 530
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized snapshots()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 737
    :try_start_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 738
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$3;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$3;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 736
    monitor-exit p0

    throw v0
.end method

.method trimToSize()V
    .locals 5

    .line 684
    :goto_0
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 685
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 686
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->removeEntry(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Entry;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 688
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    return-void
.end method
