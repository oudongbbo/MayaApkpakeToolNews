.class Lcom/maya/sdk/m/receiver/PushReceiver$3;
.super Landroid/os/Handler;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/receiver/PushReceiver;->showPushNotice(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

.field final synthetic val$id:I

.field final synthetic val$lagerIcon:Landroid/graphics/Bitmap;

.field final synthetic val$pName:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/receiver/PushReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/receiver/PushReceiver;

    .line 327
    iput-object p1, p0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

    iput p2, p0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$id:I

    iput-object p3, p0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$lagerIcon:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$url:Ljava/lang/String;

    iput-object p7, p0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$pName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 332
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    .line 335
    .local v2, "bigPic":Landroid/graphics/Bitmap;
    iget-object v3, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

    iget v4, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$id:I

    iget-object v5, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$title:Ljava/lang/String;

    iget-object v6, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$text:Ljava/lang/String;

    iget-object v8, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$lagerIcon:Landroid/graphics/Bitmap;

    iget-object v9, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$url:Ljava/lang/String;

    iget-object v10, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$pName:Ljava/lang/String;

    move-object v7, v2

    # invokes: Lcom/maya/sdk/m/receiver/PushReceiver;->pushInPicture(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v3 .. v10}, Lcom/maya/sdk/m/receiver/PushReceiver;->access$100(Lcom/maya/sdk/m/receiver/PushReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    goto :goto_0

    .line 339
    .end local v2    # "bigPic":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v11, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

    iget v12, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$id:I

    iget-object v13, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$title:Ljava/lang/String;

    iget-object v14, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$text:Ljava/lang/String;

    iget-object v15, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$lagerIcon:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$url:Ljava/lang/String;

    iget-object v3, v0, Lcom/maya/sdk/m/receiver/PushReceiver$3;->val$pName:Ljava/lang/String;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    # invokes: Lcom/maya/sdk/m/receiver/PushReceiver;->pushInText(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v11 .. v17}, Lcom/maya/sdk/m/receiver/PushReceiver;->access$200(Lcom/maya/sdk/m/receiver/PushReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    nop

    .line 345
    :goto_0
    return-void
.end method
