.class public Lcom/maya/open/http/okgo/utils/OkLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isLogEnable:Z = false

.field public static tag:Ljava/lang/String; = "OkGo"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/maya/open/http/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/maya/open/http/okgo/utils/OkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/maya/open/http/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Z)V
    .locals 0

    .line 24
    sput-object p0, Lcom/maya/open/http/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    .line 25
    sput-boolean p1, Lcom/maya/open/http/okgo/utils/OkLogger;->isLogEnable:Z

    return-void
.end method

.method public static debug(Z)V
    .locals 1

    .line 20
    sget-object v0, Lcom/maya/open/http/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/maya/open/http/okgo/utils/OkLogger;->debug(Ljava/lang/String;Z)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/maya/open/http/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    sget-boolean v0, Lcom/maya/open/http/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    .line 69
    sget-boolean v0, Lcom/maya/open/http/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 45
    sget-object v0, Lcom/maya/open/http/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/maya/open/http/okgo/utils/OkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/maya/open/http/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/maya/open/http/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/maya/open/http/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/maya/open/http/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/maya/open/http/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/maya/open/http/okgo/utils/OkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    sget-boolean v0, Lcom/maya/open/http/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
