.class final Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final cancelAfterCloseMillis:J

.field final code:I

.field final reason:Lcom/maya/open/http/okio/ByteString;


# direct methods
.method constructor <init>(ILcom/maya/open/http/okio/ByteString;J)V
    .locals 0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;->code:I

    .line 567
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;->reason:Lcom/maya/open/http/okio/ByteString;

    .line 568
    iput-wide p3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    return-void
.end method
