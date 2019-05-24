.class final Lcom/maya/open/http/okio/Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final SHARE_MINIMUM:I = 0x400

.field static final SIZE:I = 0x2000


# instance fields
.field final data:[B

.field limit:I

.field next:Lcom/maya/open/http/okio/Segment;

.field owner:Z

.field pos:I

.field prev:Lcom/maya/open/http/okio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 64
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/maya/open/http/okio/Segment;->data:[B

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/maya/open/http/okio/Segment;->owner:Z

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/maya/open/http/okio/Segment;->shared:Z

    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okio/Segment;)V
    .locals 3

    .line 70
    iget-object v0, p1, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v1, p1, Lcom/maya/open/http/okio/Segment;->pos:I

    iget v2, p1, Lcom/maya/open/http/okio/Segment;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lcom/maya/open/http/okio/Segment;-><init>([BII)V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p1, Lcom/maya/open/http/okio/Segment;->shared:Z

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/maya/open/http/okio/Segment;->data:[B

    .line 76
    iput p2, p0, Lcom/maya/open/http/okio/Segment;->pos:I

    .line 77
    iput p3, p0, Lcom/maya/open/http/okio/Segment;->limit:I

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/maya/open/http/okio/Segment;->owner:Z

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/maya/open/http/okio/Segment;->shared:Z

    return-void
.end method


# virtual methods
.method public compact()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    if-eq v0, p0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    iget-boolean v0, v0, Lcom/maya/open/http/okio/Segment;->owner:Z

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget v0, p0, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v1, p0, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    .line 145
    iget-object v1, p0, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    iget v1, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    iget-object v2, p0, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    iget-boolean v2, v2, Lcom/maya/open/http/okio/Segment;->shared:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    iget v2, v2, Lcom/maya/open/http/okio/Segment;->pos:I

    :goto_0
    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    return-void

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    invoke-virtual {p0, v1, v0}, Lcom/maya/open/http/okio/Segment;->writeTo(Lcom/maya/open/http/okio/Segment;I)V

    .line 148
    invoke-virtual {p0}, Lcom/maya/open/http/okio/Segment;->pop()Lcom/maya/open/http/okio/Segment;

    .line 149
    invoke-static {p0}, Lcom/maya/open/http/okio/SegmentPool;->recycle(Lcom/maya/open/http/okio/Segment;)V

    return-void

    .line 142
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public pop()Lcom/maya/open/http/okio/Segment;
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    iget-object v3, p0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    iput-object v3, v2, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    .line 89
    iget-object v2, p0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    iget-object v3, p0, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    iput-object v3, v2, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    .line 90
    iput-object v1, p0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    .line 91
    iput-object v1, p0, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    return-object v0
.end method

.method public push(Lcom/maya/open/http/okio/Segment;)Lcom/maya/open/http/okio/Segment;
    .locals 1

    .line 100
    iput-object p0, p1, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    .line 101
    iget-object v0, p0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    iput-object v0, p1, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    .line 102
    iget-object v0, p0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    iput-object p1, v0, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    .line 103
    iput-object p1, p0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    return-object p1
.end method

.method public split(I)Lcom/maya/open/http/okio/Segment;
    .locals 5

    if-lez p1, :cond_1

    .line 116
    iget v0, p0, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v1, p0, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    .line 125
    new-instance v0, Lcom/maya/open/http/okio/Segment;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okio/Segment;-><init>(Lcom/maya/open/http/okio/Segment;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/maya/open/http/okio/SegmentPool;->take()Lcom/maya/open/http/okio/Segment;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v2, p0, Lcom/maya/open/http/okio/Segment;->pos:I

    iget-object v3, v0, Lcom/maya/open/http/okio/Segment;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :goto_0
    iget v1, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    .line 132
    iget v1, p0, Lcom/maya/open/http/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/maya/open/http/okio/Segment;->pos:I

    .line 133
    iget-object p1, p0, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okio/Segment;->push(Lcom/maya/open/http/okio/Segment;)Lcom/maya/open/http/okio/Segment;

    return-object v0

    .line 116
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public writeTo(Lcom/maya/open/http/okio/Segment;I)V
    .locals 5

    .line 154
    iget-boolean v0, p1, Lcom/maya/open/http/okio/Segment;->owner:Z

    if-eqz v0, :cond_3

    .line 155
    iget v0, p1, Lcom/maya/open/http/okio/Segment;->limit:I

    add-int/2addr v0, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 157
    iget-boolean v0, p1, Lcom/maya/open/http/okio/Segment;->shared:Z

    if-nez v0, :cond_1

    .line 158
    iget v0, p1, Lcom/maya/open/http/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iget v2, p1, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v0, v2

    if-gt v0, v1, :cond_0

    .line 159
    iget-object v0, p1, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v1, p1, Lcom/maya/open/http/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v3, p1, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v4, p1, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget v0, p1, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v1, p1, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/maya/open/http/okio/Segment;->limit:I

    .line 161
    iput v4, p1, Lcom/maya/open/http/okio/Segment;->pos:I

    goto :goto_0

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 157
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 164
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v1, p0, Lcom/maya/open/http/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v3, p1, Lcom/maya/open/http/okio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget v0, p1, Lcom/maya/open/http/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/maya/open/http/okio/Segment;->limit:I

    .line 166
    iget p1, p0, Lcom/maya/open/http/okio/Segment;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/maya/open/http/okio/Segment;->pos:I

    return-void

    .line 154
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
