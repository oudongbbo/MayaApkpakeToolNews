.class public Lcom/maya/open/http/okgo/model/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FORMAT_HTTP_DATA:Ljava/lang/String; = "EEE, dd MMM y HH:mm:ss \'GMT\'"

.field public static final GMT_TIME_ZONE:Ljava/util/TimeZone;

.field public static final HEAD_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEAD_KEY_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEAD_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field public static final HEAD_KEY_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEAD_KEY_CONNECTION:Ljava/lang/String; = "Connection"

.field public static final HEAD_KEY_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEAD_KEY_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEAD_KEY_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEAD_KEY_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEAD_KEY_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEAD_KEY_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEAD_KEY_COOKIE2:Ljava/lang/String; = "Cookie2"

.field public static final HEAD_KEY_DATE:Ljava/lang/String; = "Date"

.field public static final HEAD_KEY_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEAD_KEY_E_TAG:Ljava/lang/String; = "ETag"

.field public static final HEAD_KEY_IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final HEAD_KEY_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEAD_KEY_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEAD_KEY_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEAD_KEY_PRAGMA:Ljava/lang/String; = "Pragma"

.field public static final HEAD_KEY_RESPONSE_CODE:Ljava/lang/String; = "ResponseCode"

.field public static final HEAD_KEY_RESPONSE_MESSAGE:Ljava/lang/String; = "ResponseMessage"

.field public static final HEAD_KEY_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final HEAD_KEY_SET_COOKIE2:Ljava/lang/String; = "Set-Cookie2"

.field public static final HEAD_KEY_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HEAD_VALUE_ACCEPT_ENCODING:Ljava/lang/String; = "gzip, deflate"

.field public static final HEAD_VALUE_CONNECTION_CLOSE:Ljava/lang/String; = "close"

.field public static final HEAD_VALUE_CONNECTION_KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field private static acceptLanguage:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x7563275169b7b161L

.field private static userAgent:Ljava/lang/String;


# instance fields
.field public headersMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okgo/model/HttpHeaders;->GMT_TIME_ZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0}, Lcom/maya/open/http/okgo/model/HttpHeaders;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-direct {p0}, Lcom/maya/open/http/okgo/model/HttpHeaders;->init()V

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static formatMillisToGMT(J)Ljava/lang/String;
    .locals 4
    .param p0, "milliseconds"    # J

    .line 254
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 255
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 256
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    sget-object v2, Lcom/maya/open/http/okgo/model/HttpHeaders;->GMT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 257
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAcceptLanguage()Ljava/lang/String;
    .locals 5

    .line 169
    sget-object v0, Lcom/maya/open/http/okgo/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 171
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "country":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .local v3, "acceptLanguageBuilder":Ljava/lang/StringBuilder;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";q=0.8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/maya/open/http/okgo/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    .line 176
    sget-object v4, Lcom/maya/open/http/okgo/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    return-object v4

    .line 178
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "country":Ljava/lang/String;
    .end local v3    # "acceptLanguageBuilder":Ljava/lang/StringBuilder;
    :cond_1
    sget-object v0, Lcom/maya/open/http/okgo/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public static getCacheControl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cacheControl"    # Ljava/lang/String;
    .param p1, "pragma"    # Ljava/lang/String;

    .line 156
    if-eqz p0, :cond_0

    return-object p0

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    return-object p1

    .line 158
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDate(Ljava/lang/String;)J
    .locals 3
    .param p0, "gmtTime"    # Ljava/lang/String;

    .line 128
    :try_start_0
    invoke-static {p0}, Lcom/maya/open/http/okgo/model/HttpHeaders;->parseGMTToMillis(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/text/ParseException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static getDate(J)Ljava/lang/String;
    .locals 1
    .param p0, "milliseconds"    # J

    .line 135
    invoke-static {p0, p1}, Lcom/maya/open/http/okgo/model/HttpHeaders;->formatMillisToGMT(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExpiration(Ljava/lang/String;)J
    .locals 3
    .param p0, "expiresTime"    # Ljava/lang/String;

    .line 140
    :try_start_0
    invoke-static {p0}, Lcom/maya/open/http/okgo/model/HttpHeaders;->parseGMTToMillis(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/text/ParseException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public static getLastModified(Ljava/lang/String;)J
    .locals 3
    .param p0, "lastModified"    # Ljava/lang/String;

    .line 148
    :try_start_0
    invoke-static {p0}, Lcom/maya/open/http/okgo/model/HttpHeaders;->parseGMTToMillis(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/text/ParseException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 9

    .line 189
    sget-object v0, Lcom/maya/open/http/okgo/model/HttpHeaders;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    const/4 v0, 0x0

    move-object v1, v0

    .line 192
    .local v1, "webUserAgent":Ljava/lang/String;
    :try_start_0
    const-string v2, "com.android.internal.R$string"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 193
    .local v2, "sysResCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "web_user_agent"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 194
    .local v3, "webUserAgentField":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 195
    .local v0, "resId":Ljava/lang/Integer;
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 198
    .end local v0    # "resId":Ljava/lang/Integer;
    .end local v2    # "sysResCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "webUserAgentField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 199
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/5.0 %sSafari/533.1"

    .line 203
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 204
    .local v0, "locale":Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    .local v2, "buffer":Ljava/lang/StringBuffer;
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 207
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 211
    :cond_1
    const-string v4, "1.0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :goto_1
    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "language":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 216
    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "country":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 219
    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v5, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    .end local v5    # "country":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 224
    :cond_3
    const-string v5, "en"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :goto_2
    const-string v5, "REL"

    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 228
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 229
    .local v5, "model":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 230
    const-string v6, "; "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    .end local v5    # "model":Ljava/lang/String;
    :cond_4
    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 235
    .local v5, "id":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 236
    const-string v6, " Build/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    :cond_5
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    const-string v8, "Mobile "

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/maya/open/http/okgo/model/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 240
    sget-object v6, Lcom/maya/open/http/okgo/model/HttpHeaders;->userAgent:Ljava/lang/String;

    return-object v6

    .line 242
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "webUserAgent":Ljava/lang/String;
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    :cond_6
    sget-object v0, Lcom/maya/open/http/okgo/model/HttpHeaders;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    .line 75
    return-void
.end method

.method public static parseGMTToMillis(Ljava/lang/String;)J
    .locals 4
    .param p0, "gmtTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 246
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 247
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 248
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    sget-object v1, Lcom/maya/open/http/okgo/model/HttpHeaders;->GMT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 249
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 250
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public static setAcceptLanguage(Ljava/lang/String;)V
    .locals 0
    .param p0, "language"    # Ljava/lang/String;

    .line 162
    sput-object p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "agent"    # Ljava/lang/String;

    .line 182
    sput-object p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 183
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 108
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/maya/open/http/okgo/model/HttpHeaders;)V
    .locals 2
    .param p1, "headers"    # Lcom/maya/open/http/okgo/model/HttpHeaders;

    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p1, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 96
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 87
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final toJSONString()Ljava/lang/String;
    .locals 5

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 118
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 122
    :cond_0
    goto :goto_1

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 123
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpHeaders{headersMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
