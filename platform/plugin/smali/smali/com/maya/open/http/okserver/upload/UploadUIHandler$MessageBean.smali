.class public Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;
.super Ljava/lang/Object;
.source "UploadUIHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okserver/upload/UploadUIHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageBean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Exception;

.field public errorMsg:Ljava/lang/String;

.field public uploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    .local p0, "this":Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;, "Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
