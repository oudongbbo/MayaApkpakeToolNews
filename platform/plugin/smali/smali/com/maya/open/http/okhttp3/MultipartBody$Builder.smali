.class public final Lcom/maya/open/http/okhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final boundary:Lcom/maya/open/http/okio/ByteString;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/maya/open/http/okhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 284
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "boundary"    # Ljava/lang/String;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    sget-object v0, Lcom/maya/open/http/okhttp3/MultipartBody;->MIXED:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->type:Lcom/maya/open/http/okhttp3/MediaType;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    .line 288
    invoke-static {p1}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->boundary:Lcom/maya/open/http/okio/ByteString;

    .line 289
    return-void
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 318
    invoke-static {p1, p2}, Lcom/maya/open/http/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->addPart(Lcom/maya/open/http/okhttp3/MultipartBody$Part;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "body"    # Lcom/maya/open/http/okhttp3/RequestBody;

    .line 323
    invoke-static {p1, p2, p3}, Lcom/maya/open/http/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->addPart(Lcom/maya/open/http/okhttp3/MultipartBody$Part;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addPart(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;
    .locals 1
    .param p1, "headers"    # Lcom/maya/open/http/okhttp3/Headers;
    .param p2, "body"    # Lcom/maya/open/http/okhttp3/RequestBody;

    .line 313
    invoke-static {p1, p2}, Lcom/maya/open/http/okhttp3/MultipartBody$Part;->create(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->addPart(Lcom/maya/open/http/okhttp3/MultipartBody$Part;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addPart(Lcom/maya/open/http/okhttp3/MultipartBody$Part;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;
    .locals 2
    .param p1, "part"    # Lcom/maya/open/http/okhttp3/MultipartBody$Part;

    .line 328
    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    return-object p0

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "part == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPart(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;
    .locals 1
    .param p1, "body"    # Lcom/maya/open/http/okhttp3/RequestBody;

    .line 308
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/MultipartBody$Part;->create(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->addPart(Lcom/maya/open/http/okhttp3/MultipartBody$Part;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/maya/open/http/okhttp3/MultipartBody;
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/maya/open/http/okhttp3/MultipartBody;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->boundary:Lcom/maya/open/http/okio/ByteString;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->type:Lcom/maya/open/http/okhttp3/MediaType;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/maya/open/http/okhttp3/MultipartBody;-><init>(Lcom/maya/open/http/okio/ByteString;Lcom/maya/open/http/okhttp3/MediaType;Ljava/util/List;)V

    return-object v0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setType(Lcom/maya/open/http/okhttp3/MediaType;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;
    .locals 3
    .param p1, "type"    # Lcom/maya/open/http/okhttp3/MediaType;

    .line 296
    if-eqz p1, :cond_1

    .line 299
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->type:Lcom/maya/open/http/okhttp3/MediaType;

    .line 303
    return-object p0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
