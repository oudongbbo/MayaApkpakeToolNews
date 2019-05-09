.class final Lcom/maya/sdk/m/controller/UpdateManager$2;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/UpdateManager;->checkAndInstall(ZLandroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/maya/sdk/m/controller/UpdateManager$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/UpdateManager$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/maya/sdk/m/controller/UpdateManager$2;->val$context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Lcom/maya/sdk/m/views/UpdateDialog;->notificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 118
    iget-object v0, p0, Lcom/maya/sdk/m/controller/UpdateManager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/UpdateManager$2;->val$file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/maya/sdk/m/controller/UpdateManager;->installApk(Landroid/content/Context;Ljava/io/File;)V

    .line 119
    return-void
.end method
