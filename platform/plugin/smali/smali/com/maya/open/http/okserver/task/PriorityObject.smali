.class public Lcom/maya/open/http/okserver/task/PriorityObject;
.super Ljava/lang/Object;
.source "PriorityObject.java"


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
    .locals 1
    .param p1, "priority"    # Lcom/maya/open/http/okserver/task/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/task/Priority;",
            "TE;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityObject;, "Lcom/maya/open/http/okserver/task/PriorityObject<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    sget-object v0, Lcom/maya/open/http/okserver/task/Priority;->DEFAULT:Lcom/maya/open/http/okserver/task/Priority;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityObject;->priority:Lcom/maya/open/http/okserver/task/Priority;

    .line 21
    iput-object p2, p0, Lcom/maya/open/http/okserver/task/PriorityObject;->obj:Ljava/lang/Object;

    .line 22
    return-void
.end method
