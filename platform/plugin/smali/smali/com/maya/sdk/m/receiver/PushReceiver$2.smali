.class Lcom/maya/sdk/m/receiver/PushReceiver$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/receiver/PushReceiver;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Landroid/graphics/Bitmap;

.field final synthetic i:Lcom/maya/sdk/m/receiver/PushReceiver;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/receiver/PushReceiver;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->i:Lcom/maya/sdk/m/receiver/PushReceiver;

    iput p2, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->a:I

    iput p3, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->b:I

    iput-object p4, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->h:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 272
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 274
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Landroid/graphics/Bitmap;

    .line 277
    iget-object v2, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->i:Lcom/maya/sdk/m/receiver/PushReceiver;

    iget v3, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->a:I

    iget v4, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->b:I

    iget-object v6, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->d:Ljava/lang/String;

    iget-object v8, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->e:Ljava/lang/String;

    iget-object v9, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->f:Ljava/lang/String;

    iget-object v10, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->g:Ljava/lang/String;

    invoke-virtual/range {v2 .. v10}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v11, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->i:Lcom/maya/sdk/m/receiver/PushReceiver;

    iget v12, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->a:I

    iget v13, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->b:I

    iget-object v14, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->h:Landroid/graphics/Bitmap;

    iget-object v15, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->c:Ljava/lang/String;

    iget-object v1, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->g:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v11 .. v19}, Lcom/maya/sdk/m/receiver/PushReceiver;->a(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
