.class public final Lcom/maya/open/http/okhttp3/internal/http/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# static fields
.field public static final HTTP_CONTINUE:I = 0x64

.field public static final HTTP_PERM_REDIRECT:I = 0x134

.field public static final HTTP_TEMP_REDIRECT:I = 0x133


# instance fields
.field public final code:I

.field public final message:Ljava/lang/String;

.field public final protocol:Lcom/maya/open/http/okhttp3/Protocol;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/Protocol;ILjava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Lcom/maya/open/http/okhttp3/Protocol;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 39
    iput p2, p0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->code:I

    .line 40
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static get(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/internal/http/StatusLine;
    .locals 4
    .param p0, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 44
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->protocol()Lcom/maya/open/http/okhttp3/Protocol;

    move-result-object v1

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v2

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;-><init>(Lcom/maya/open/http/okhttp3/Protocol;ILjava/lang/String;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/internal/http/StatusLine;
    .locals 7
    .param p0, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const-string v0, "HTTP/1."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    .line 58
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 59
    .local v0, "httpMinorVersion":I
    const/16 v2, 0x9

    .line 60
    .local v2, "codeStart":I
    if-nez v0, :cond_0

    .line 61
    sget-object v3, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_0:Lcom/maya/open/http/okhttp3/Protocol;

    goto :goto_0

    .line 62
    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 63
    sget-object v3, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    .line 65
    .end local v0    # "httpMinorVersion":I
    .local v3, "protocol":Lcom/maya/open/http/okhttp3/Protocol;
    :goto_0
    move-object v0, v3

    .line 67
    .end local v3    # "protocol":Lcom/maya/open/http/okhttp3/Protocol;
    .local v0, "protocol":Lcom/maya/open/http/okhttp3/Protocol;
    goto :goto_1

    .line 65
    .local v0, "httpMinorVersion":I
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected status line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0    # "httpMinorVersion":I
    .end local v2    # "codeStart":I
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected status line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_3
    const-string v0, "ICY "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 69
    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_0:Lcom/maya/open/http/okhttp3/Protocol;

    .line 70
    .local v0, "protocol":Lcom/maya/open/http/okhttp3/Protocol;
    const/4 v2, 0x4

    .line 72
    .restart local v2    # "codeStart":I
    :goto_1
    nop

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x3

    if-lt v3, v4, :cond_6

    .line 81
    add-int/lit8 v3, v2, 0x3

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v3, "code":I
    nop

    .line 83
    nop

    .line 88
    const-string v4, ""

    .line 89
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v2, 0x3

    if-le v5, v6, :cond_5

    .line 90
    add-int/lit8 v5, v2, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_4

    .line 93
    add-int/lit8 v1, v2, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 91
    :cond_4
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected status line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_5
    :goto_2
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;

    invoke-direct {v1, v0, v3, v4}, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;-><init>(Lcom/maya/open/http/okhttp3/Protocol;ILjava/lang/String;)V

    return-object v1

    .line 82
    .end local v3    # "code":I
    .end local v4    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected status line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected status line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0    # "protocol":Lcom/maya/open/http/okhttp3/Protocol;
    .end local v2    # "codeStart":I
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected status line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    sget-object v2, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_0:Lcom/maya/open/http/okhttp3/Protocol;

    if-ne v1, v2, :cond_0

    const-string v1, "HTTP/1.0"

    goto :goto_0

    :cond_0
    const-string v1, "HTTP/1.1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
