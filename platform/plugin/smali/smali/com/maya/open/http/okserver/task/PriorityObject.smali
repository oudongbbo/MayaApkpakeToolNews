.class public Lcom/maya/open/http/okserver/task/PriorityObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final priority:Lcom/maya/open/http/okserver/task/Priority;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okserver/task/Priority;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/task/Priority;",
            "TE;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lcom/maya/open/http/okserver/task/Priority;->DEFAULT:Lcom/maya/open/http/okserver/task/Priority;

    :cond_0
    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityObject;->priority:Lcom/maya/open/http/okserver/task/Priority;

    .line 21
    iput-object p2, p0, Lcom/maya/open/http/okserver/task/PriorityObject;->obj:Ljava/lang/Object;

    return-void
.end method
