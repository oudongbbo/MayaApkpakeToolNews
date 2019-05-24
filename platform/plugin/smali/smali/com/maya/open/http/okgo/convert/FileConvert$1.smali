.class Lcom/maya/open/http/okgo/convert/FileConvert$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okgo/convert/FileConvert;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okgo/convert/FileConvert;

.field final synthetic val$finalSum:J

.field final synthetic val$networkSpeed:J

.field final synthetic val$total:J


# direct methods
.method constructor <init>(Lcom/maya/open/http/okgo/convert/FileConvert;JJJ)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/maya/open/http/okgo/convert/FileConvert$1;->this$0:Lcom/maya/open/http/okgo/convert/FileConvert;

    iput-wide p2, p0, Lcom/maya/open/http/okgo/convert/FileConvert$1;->val$finalSum:J

    iput-wide p4, p0, Lcom/maya/open/http/okgo/convert/FileConvert$1;->val$total:J

    iput-wide p6, p0, Lcom/maya/open/http/okgo/convert/FileConvert$1;->val$networkSpeed:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 93
    iget-object v0, p0, Lcom/maya/open/http/okgo/convert/FileConvert$1;->this$0:Lcom/maya/open/http/okgo/convert/FileConvert;

    invoke-static {v0}, Lcom/maya/open/http/okgo/convert/FileConvert;->access$000(Lcom/maya/open/http/okgo/convert/FileConvert;)Lcom/maya/open/http/okgo/callback/AbsCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/maya/open/http/okgo/convert/FileConvert$1;->val$finalSum:J

    iget-wide v4, p0, Lcom/maya/open/http/okgo/convert/FileConvert$1;->val$total:J

    iget-wide v6, p0, Lcom/maya/open/http/okgo/convert/FileConvert$1;->val$finalSum:J

    long-to-float v0, v6

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v0, v0, v6

    iget-wide v6, p0, Lcom/maya/open/http/okgo/convert/FileConvert$1;->val$total:J

    long-to-float v6, v6

    div-float v6, v0, v6

    iget-wide v7, p0, Lcom/maya/open/http/okgo/convert/FileConvert$1;->val$networkSpeed:J

    invoke-virtual/range {v1 .. v8}, Lcom/maya/open/http/okgo/callback/AbsCallback;->downloadProgress(JJFJ)V

    return-void
.end method
