.class public final Lcom/maya/open/http/okio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/maya/open/http/okio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lcom/maya/open/http/okio/ByteString;


# direct methods
.method private constructor <init>([Lcom/maya/open/http/okio/ByteString;)V
    .locals 0
    .param p1, "byteStrings"    # [Lcom/maya/open/http/okio/ByteString;

    .line 29
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/maya/open/http/okio/Options;->byteStrings:[Lcom/maya/open/http/okio/ByteString;

    .line 31
    return-void
.end method

.method public static varargs of([Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/Options;
    .locals 2
    .param p0, "byteStrings"    # [Lcom/maya/open/http/okio/ByteString;

    .line 34
    new-instance v0, Lcom/maya/open/http/okio/Options;

    invoke-virtual {p0}, [Lcom/maya/open/http/okio/ByteString;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/maya/open/http/okio/ByteString;

    invoke-direct {v0, v1}, Lcom/maya/open/http/okio/Options;-><init>([Lcom/maya/open/http/okio/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p1, "i"    # I

    .line 38
    iget-object v0, p0, Lcom/maya/open/http/okio/Options;->byteStrings:[Lcom/maya/open/http/okio/ByteString;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okio/Options;->get(I)Lcom/maya/open/http/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/maya/open/http/okio/Options;->byteStrings:[Lcom/maya/open/http/okio/ByteString;

    array-length v0, v0

    return v0
.end method
