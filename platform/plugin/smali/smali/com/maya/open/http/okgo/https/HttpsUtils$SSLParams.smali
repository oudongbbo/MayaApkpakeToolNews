.class public Lcom/maya/open/http/okgo/https/HttpsUtils$SSLParams;
.super Ljava/lang/Object;
.source "HttpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okgo/https/HttpsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSLParams"
.end annotation


# instance fields
.field public sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field public trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
