.class public final Lcom/maya/open/http/okhttp3/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

.field private static final TYPE_SUBTYPE:Ljava/util/regex/Pattern;


# instance fields
.field private final charset:Ljava/lang/String;

.field private final mediaType:Ljava/lang/String;

.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/MediaType;->mediaType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/MediaType;->type:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/MediaType;->subtype:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/maya/open/http/okhttp3/MediaType;->charset:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MediaType;
    .locals 13
    .param p0, "string"    # Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/maya/open/http/okhttp3/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 54
    .local v0, "typeSubtype":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 55
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "type":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "subtype":Ljava/lang/String;
    const/4 v6, 0x0

    .line 59
    .local v6, "charset":Ljava/lang/String;
    sget-object v7, Lcom/maya/open/http/okhttp3/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 60
    .local v7, "parameter":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    .local v8, "s":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 62
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-nez v9, :cond_1

    return-object v2

    .line 64
    :cond_1
    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "name":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v10, "charset"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .end local v9    # "name":Ljava/lang/String;
    goto :goto_3

    .line 67
    .restart local v9    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, "token":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 70
    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v4, :cond_3

    .line 71
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v1

    invoke-virtual {v10, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_3
    move-object v11, v10

    :goto_1
    goto :goto_2

    .line 75
    :cond_4
    const/4 v11, 0x3

    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, "charsetParameter":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 78
    return-object v2

    .line 80
    :cond_5
    move-object v6, v11

    .line 60
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "token":Ljava/lang/String;
    .end local v11    # "charsetParameter":Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    goto :goto_0

    .line 83
    .end local v8    # "s":I
    :cond_7
    new-instance v1, Lcom/maya/open/http/okhttp3/MediaType;

    invoke-direct {v1, p0, v3, v5, v6}, Lcom/maya/open/http/okhttp3/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public charset()Ljava/nio/charset/Charset;
    .locals 1

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1
    .param p1, "defaultValue"    # Ljava/nio/charset/Charset;

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/MediaType;->charset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/MediaType;->charset:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 129
    instance-of v0, p1, Lcom/maya/open/http/okhttp3/MediaType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okhttp3/MediaType;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/MediaType;->mediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public subtype()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/MediaType;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method
