.class public Lcom/maya/open/http/okgo/exception/OkGoException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static INSTANCE(Ljava/lang/String;)Lcom/maya/open/http/okgo/exception/OkGoException;
    .locals 1

    .line 17
    new-instance v0, Lcom/maya/open/http/okgo/exception/OkGoException;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okgo/exception/OkGoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
