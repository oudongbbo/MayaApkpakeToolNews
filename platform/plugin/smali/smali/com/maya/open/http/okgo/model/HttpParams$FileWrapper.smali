.class public Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;
.super Ljava/lang/Object;
.source "HttpParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okgo/model/HttpParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileWrapper"
.end annotation


# instance fields
.field public contentType:Lcom/maya/open/http/okhttp3/MediaType;

.field public file:Ljava/io/File;

.field public fileName:Ljava/lang/String;

.field public fileSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "contentType"    # Lcom/maya/open/http/okhttp3/MediaType;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->file:Ljava/io/File;

    .line 228
    iput-object p2, p0, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 229
    iput-object p3, p0, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->contentType:Lcom/maya/open/http/okhttp3/MediaType;

    .line 230
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->fileSize:J

    .line 231
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileWrapper{file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->contentType:Lcom/maya/open/http/okhttp3/MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
