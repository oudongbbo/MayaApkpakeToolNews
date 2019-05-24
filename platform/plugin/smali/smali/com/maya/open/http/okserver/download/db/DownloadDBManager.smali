.class public final enum Lcom/maya/open/http/okserver/download/db/DownloadDBManager;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/maya/open/http/okserver/download/db/DownloadDBManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

.field public static final enum INSTANCE:Lcom/maya/open/http/okserver/download/db/DownloadDBManager;


# instance fields
.field private infoDao:Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;

.field private mLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->INSTANCE:Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    sget-object v1, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->INSTANCE:Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->$VALUES:[Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 28
    new-instance p1, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;

    invoke-direct {p1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;-><init>()V

    iput-object p1, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->infoDao:Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/db/DownloadDBManager;
    .locals 1

    .line 19
    const-class v0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    return-object p0
.end method

.method public static values()[Lcom/maya/open/http/okserver/download/db/DownloadDBManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->$VALUES:[Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    invoke-virtual {v0}, [Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    return-object v0
.end method


# virtual methods
.method public clear()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->infoDao:Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->deleteAll()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 99
    throw v0
.end method

.method public create(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->infoDao:Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->create(Ljava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p1, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    throw p1
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->infoDao:Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->delete(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object p1, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    throw p1
.end method

.method public get(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->infoDao:Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->get(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 38
    throw p1
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okserver/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->infoDao:Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->getAll()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 48
    throw v0
.end method

.method public replace(Lcom/maya/open/http/okserver/download/DownloadInfo;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->infoDao:Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->replace(Ljava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 59
    throw p1
.end method

.method public update(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->infoDao:Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->update(Lcom/maya/open/http/okserver/download/DownloadInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object p1, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 89
    throw p1
.end method
