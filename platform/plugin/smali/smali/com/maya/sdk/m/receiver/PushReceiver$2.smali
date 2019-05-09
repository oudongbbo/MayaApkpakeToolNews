.class Lcom/maya/sdk/m/receiver/PushReceiver$2;
.super Landroid/os/Handler;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/receiver/PushReceiver;->startPush(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

.field final synthetic val$defaultIcon:Landroid/graphics/Bitmap;

.field final synthetic val$dst_url:Ljava/lang/String;

.field final synthetic val$img_url:Ljava/lang/String;

.field final synthetic val$pckName:Ljava/lang/String;

.field final synthetic val$push_desc:Ljava/lang/String;

.field final synthetic val$push_id:I

.field final synthetic val$push_title:Ljava/lang/String;

.field final synthetic val$push_type:I


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/receiver/PushReceiver;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/receiver/PushReceiver;

    .line 268
    iput-object p1, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

    iput p2, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_id:I

    iput p3, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_type:I

    iput-object p4, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_title:Ljava/lang/String;

    iput-object p5, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_desc:Ljava/lang/String;

    iput-object p6, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$dst_url:Ljava/lang/String;

    iput-object p7, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$pckName:Ljava/lang/String;

    iput-object p8, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$img_url:Ljava/lang/String;

    iput-object p9, p0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$defaultIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

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
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    .line 277
    .local v2, "iconBitmap":Landroid/graphics/Bitmap;
    iget-object v3, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

    iget v4, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_id:I

    iget v5, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_type:I

    iget-object v7, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_title:Ljava/lang/String;

    iget-object v8, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_desc:Ljava/lang/String;

    iget-object v9, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$dst_url:Ljava/lang/String;

    iget-object v10, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$pckName:Ljava/lang/String;

    iget-object v11, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$img_url:Ljava/lang/String;

    move-object v6, v2

    invoke-virtual/range {v3 .. v11}, Lcom/maya/sdk/m/receiver/PushReceiver;->showPushNotice(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    goto :goto_0

    .line 281
    .end local v2    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v12, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

    iget v13, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_id:I

    iget v14, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_type:I

    iget-object v15, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$defaultIcon:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_title:Ljava/lang/String;

    iget-object v3, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$push_desc:Ljava/lang/String;

    iget-object v4, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$dst_url:Ljava/lang/String;

    iget-object v5, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$pckName:Ljava/lang/String;

    iget-object v6, v0, Lcom/maya/sdk/m/receiver/PushReceiver$2;->val$img_url:Ljava/lang/String;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-virtual/range {v12 .. v20}, Lcom/maya/sdk/m/receiver/PushReceiver;->showPushNotice(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    nop

    .line 287
    :goto_0
    return-void
.end method
