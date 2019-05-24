.class public interface abstract Lcom/maya/open/http/okhttp3/internal/io/FileSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SYSTEM:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/io/FileSystem$1;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/internal/io/FileSystem$1;-><init>()V

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->SYSTEM:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    return-void
.end method


# virtual methods
.method public abstract appendingSink(Ljava/io/File;)Lcom/maya/open/http/okio/Sink;
.end method

.method public abstract delete(Ljava/io/File;)V
.end method

.method public abstract deleteContents(Ljava/io/File;)V
.end method

.method public abstract exists(Ljava/io/File;)Z
.end method

.method public abstract rename(Ljava/io/File;Ljava/io/File;)V
.end method

.method public abstract sink(Ljava/io/File;)Lcom/maya/open/http/okio/Sink;
.end method

.method public abstract size(Ljava/io/File;)J
.end method

.method public abstract source(Ljava/io/File;)Lcom/maya/open/http/okio/Source;
.end method
