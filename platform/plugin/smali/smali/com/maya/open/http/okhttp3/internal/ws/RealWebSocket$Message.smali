.class final Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final data:Lcom/maya/open/http/okio/ByteString;

.field final formatOpcode:I


# direct methods
.method constructor <init>(ILcom/maya/open/http/okio/ByteString;)V
    .locals 0
    .param p1, "formatOpcode"    # I
    .param p2, "data"    # Lcom/maya/open/http/okio/ByteString;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 556
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Message;->data:Lcom/maya/open/http/okio/ByteString;

    .line 557
    return-void
.end method
