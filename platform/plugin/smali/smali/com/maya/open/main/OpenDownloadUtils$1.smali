.class Lcom/maya/open/main/OpenDownloadUtils$1;
.super Ljava/lang/Object;
.source "OpenDownloadUtils.java"

# interfaces
.implements Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/main/OpenDownloadUtils;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/main/OpenDownloadUtils;


# direct methods
.method constructor <init>(Lcom/maya/open/main/OpenDownloadUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/main/OpenDownloadUtils;

    .line 25
    iput-object p1, p0, Lcom/maya/open/main/OpenDownloadUtils$1;->this$0:Lcom/maya/open/main/OpenDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllTaskEnd()V
    .locals 0

    .line 31
    return-void
.end method
