.class public Lcom/maya/open/http/OpenHttpParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field debug:Z

.field retry:I

.field timeOut:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1770

    .line 6
    iput-wide v0, p0, Lcom/maya/open/http/OpenHttpParams;->timeOut:J

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/maya/open/http/OpenHttpParams;->retry:I

    .line 8
    iput-boolean v0, p0, Lcom/maya/open/http/OpenHttpParams;->debug:Z

    return-void
.end method


# virtual methods
.method public getRetry()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/maya/open/http/OpenHttpParams;->retry:I

    return v0
.end method

.method public getTimeOut()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/maya/open/http/OpenHttpParams;->timeOut:J

    return-wide v0
.end method

.method public isDebug()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/maya/open/http/OpenHttpParams;->debug:Z

    return v0
.end method

.method public setDebug(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/maya/open/http/OpenHttpParams;->debug:Z

    return-void
.end method

.method public setRetry(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/maya/open/http/OpenHttpParams;->retry:I

    return-void
.end method

.method public setTimeOut(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/maya/open/http/OpenHttpParams;->timeOut:J

    return-void
.end method
