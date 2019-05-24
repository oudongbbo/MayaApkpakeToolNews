.class public Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okserver/download/DownloadUIHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageBean"
.end annotation


# instance fields
.field public downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

.field public e:Ljava/lang/Exception;

.field public errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
