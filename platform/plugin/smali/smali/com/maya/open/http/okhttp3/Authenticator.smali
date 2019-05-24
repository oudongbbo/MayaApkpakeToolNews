.class public interface abstract Lcom/maya/open/http/okhttp3/Authenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NONE:Lcom/maya/open/http/okhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/maya/open/http/okhttp3/Authenticator$1;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/Authenticator$1;-><init>()V

    sput-object v0, Lcom/maya/open/http/okhttp3/Authenticator;->NONE:Lcom/maya/open/http/okhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lcom/maya/open/http/okhttp3/Route;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;
.end method
