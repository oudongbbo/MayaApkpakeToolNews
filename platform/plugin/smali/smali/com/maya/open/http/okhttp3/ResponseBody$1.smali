.class final Lcom/maya/open/http/okhttp3/ResponseBody$1;
.super Lcom/maya/open/http/okhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/ResponseBody;->create(Lcom/maya/open/http/okhttp3/MediaType;JLcom/maya/open/http/okio/BufferedSource;)Lcom/maya/open/http/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/maya/open/http/okio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lcom/maya/open/http/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/MediaType;JLcom/maya/open/http/okio/BufferedSource;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/ResponseBody$1;->val$contentType:Lcom/maya/open/http/okhttp3/MediaType;

    iput-wide p2, p0, Lcom/maya/open/http/okhttp3/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lcom/maya/open/http/okhttp3/ResponseBody$1;->val$content:Lcom/maya/open/http/okio/BufferedSource;

    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/maya/open/http/okhttp3/MediaType;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ResponseBody$1;->val$contentType:Lcom/maya/open/http/okhttp3/MediaType;

    return-object v0
.end method

.method public source()Lcom/maya/open/http/okio/BufferedSource;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ResponseBody$1;->val$content:Lcom/maya/open/http/okio/BufferedSource;

    return-object v0
.end method
