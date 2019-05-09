.class Lcom/maya/sdk/m/views/UpdateDialog$3;
.super Landroid/os/Handler;
.source "UpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/m/views/UpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/views/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/views/UpdateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 195
    iput-object p1, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 199
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/UpdateDialog;->initUpdateNotification()V

    .line 280
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/m/views/UpdateDialog;->access$600(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/maya/sdk/m/views/UpdateDialog;->notificationId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/maya/sdk/m/model/MConfigManager;->setUpdateStartState(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 282
    goto/16 :goto_1

    .line 266
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/m/views/UpdateDialog;->access$600(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    const-string v4, "maya_update_fail"

    # invokes: Lcom/maya/sdk/m/views/UpdateDialog;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/maya/sdk/m/views/UpdateDialog;->access$100(Lcom/maya/sdk/m/views/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/m/controller/UpdateManager;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/maya/sdk/m/views/UpdateDialog;->access$1100(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/app/NotificationManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 271
    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/maya/sdk/m/views/UpdateDialog;->access$1100(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/app/NotificationManager;

    move-result-object v1

    sget v2, Lcom/maya/sdk/m/views/UpdateDialog;->notificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 221
    .end local v0    # "errorMsg":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 223
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 224
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "datas":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 226
    iget-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/maya/sdk/m/views/UpdateDialog;->convertFileSize(J)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "doneSize":Ljava/lang/String;
    iget-object v5, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/maya/sdk/m/views/UpdateDialog;->convertFileSize(J)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "totalSize":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/maya/sdk/m/views/UpdateDialog;->convertFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "speed":Ljava/lang/String;
    iget-object v6, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    const/4 v7, 0x3

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    # setter for: Lcom/maya/sdk/m/views/UpdateDialog;->loadingProgress:I
    invoke-static {v6, v7}, Lcom/maya/sdk/m/views/UpdateDialog;->access$702(Lcom/maya/sdk/m/views/UpdateDialog;I)I

    .line 230
    iget-object v6, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->update_size:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/maya/sdk/m/views/UpdateDialog;->access$800(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v6, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->update_speed:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/maya/sdk/m/views/UpdateDialog;->access$900(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v6, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->update_progress:Lcom/maya/sdk/m/views/common/LoadingLineWithText;
    invoke-static {v6}, Lcom/maya/sdk/m/views/UpdateDialog;->access$1000(Lcom/maya/sdk/m/views/UpdateDialog;)Lcom/maya/sdk/m/views/common/LoadingLineWithText;

    move-result-object v6

    iget-object v7, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->loadingProgress:I
    invoke-static {v7}, Lcom/maya/sdk/m/views/UpdateDialog;->access$700(Lcom/maya/sdk/m/views/UpdateDialog;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->setValue(I)V

    .line 235
    iget-object v6, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/maya/sdk/m/views/UpdateDialog;->access$1100(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/app/NotificationManager;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 237
    const-string v6, "update_text"

    const-string v7, "id"

    iget-object v8, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/maya/sdk/m/views/UpdateDialog;->access$600(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v6

    .line 238
    .local v6, "update_text":I
    const-string v7, "update_progress"

    const-string v8, "id"

    iget-object v9, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/maya/sdk/m/views/UpdateDialog;->access$600(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v7

    .line 239
    .local v7, "update_progress":I
    const-string v8, ""

    .line 240
    .local v8, "text":Ljava/lang/String;
    iget-object v9, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->loadingProgress:I
    invoke-static {v9}, Lcom/maya/sdk/m/views/UpdateDialog;->access$700(Lcom/maya/sdk/m/views/UpdateDialog;)I

    move-result v9

    const/16 v10, 0x64

    if-ne v9, v10, :cond_0

    .line 242
    const-string v8, "\u5df2\u5b8c\u6210"

    goto :goto_0

    .line 243
    :cond_0
    const-string v9, "0B/s"

    invoke-virtual {v9, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 245
    const-string v8, "\u5df2\u6682\u505c"

    goto :goto_0

    .line 248
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;
    invoke-static {v11}, Lcom/maya/sdk/m/views/UpdateDialog;->access$1200(Lcom/maya/sdk/m/views/UpdateDialog;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 251
    :goto_0
    iget-object v9, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;
    invoke-static {v9}, Lcom/maya/sdk/m/views/UpdateDialog;->access$1300(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/widget/RemoteViews;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 252
    iget-object v9, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;
    invoke-static {v9}, Lcom/maya/sdk/m/views/UpdateDialog;->access$1300(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/widget/RemoteViews;

    move-result-object v9

    iget-object v11, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->loadingProgress:I
    invoke-static {v11}, Lcom/maya/sdk/m/views/UpdateDialog;->access$700(Lcom/maya/sdk/m/views/UpdateDialog;)I

    move-result v11

    invoke-virtual {v9, v7, v10, v11, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 254
    iget-object v4, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/maya/sdk/m/views/UpdateDialog;->access$1400(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/app/Notification;

    move-result-object v4

    iget-object v9, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;
    invoke-static {v9}, Lcom/maya/sdk/m/views/UpdateDialog;->access$1300(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/widget/RemoteViews;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 255
    iget-object v4, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/maya/sdk/m/views/UpdateDialog;->access$1100(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/app/NotificationManager;

    move-result-object v4

    sget v9, Lcom/maya/sdk/m/views/UpdateDialog;->notificationId:I

    iget-object v10, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;
    invoke-static {v10}, Lcom/maya/sdk/m/views/UpdateDialog;->access$1400(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 259
    .end local v1    # "totalSize":Ljava/lang/String;
    .end local v2    # "datas":[Ljava/lang/String;
    .end local v3    # "doneSize":Ljava/lang/String;
    .end local v5    # "speed":Ljava/lang/String;
    .end local v6    # "update_text":I
    .end local v7    # "update_progress":I
    .end local v8    # "text":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 204
    .end local v0    # "data":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 206
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 208
    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/m/views/UpdateDialog;->access$600(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    const-string v4, "maya_update_complete"

    # invokes: Lcom/maya/sdk/m/views/UpdateDialog;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/maya/sdk/m/views/UpdateDialog;->access$100(Lcom/maya/sdk/m/views/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/m/controller/UpdateManager;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->isForceUpdate:Z
    invoke-static {v1}, Lcom/maya/sdk/m/views/UpdateDialog;->access$400(Lcom/maya/sdk/m/views/UpdateDialog;)Z

    move-result v1

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/m/views/UpdateDialog;->access$600(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/maya/sdk/m/controller/UpdateManager;->checkAndInstall(ZLandroid/content/Context;Ljava/io/File;)V

    .line 210
    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    invoke-virtual {v1}, Lcom/maya/sdk/m/views/UpdateDialog;->dismiss()V

    goto :goto_1

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/m/views/UpdateDialog;->access$600(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/m/views/UpdateDialog$3;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    const-string v3, "maya_update_fail"

    # invokes: Lcom/maya/sdk/m/views/UpdateDialog;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/maya/sdk/m/views/UpdateDialog;->access$100(Lcom/maya/sdk/m/views/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/m/controller/UpdateManager;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    nop

    .line 288
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
