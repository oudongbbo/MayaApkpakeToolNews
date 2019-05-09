.class public Lcom/maya/open/http/okgo/exception/OkGoException;
.super Ljava/lang/Exception;
.source "OkGoException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public static INSTANCE(Ljava/lang/String;)Lcom/maya/open/http/okgo/exception/OkGoException;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/maya/open/http/okgo/exception/OkGoException;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okgo/exception/OkGoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
