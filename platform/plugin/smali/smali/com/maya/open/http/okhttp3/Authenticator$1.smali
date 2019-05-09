.class final Lcom/maya/open/http/okhttp3/Authenticator$1;
.super Ljava/lang/Object;
.source "Authenticator.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/maya/open/http/okhttp3/Route;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;
    .locals 1
    .param p1, "route"    # Lcom/maya/open/http/okhttp3/Route;
    .param p2, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method
