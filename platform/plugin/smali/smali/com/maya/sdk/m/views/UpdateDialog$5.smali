.class Lcom/maya/sdk/m/views/UpdateDialog$5;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/views/UpdateDialog;->checkDownload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/views/UpdateDialog;

.field final synthetic val$down_url:Ljava/lang/String;

.field final synthetic val$mMaterialDialog:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/views/UpdateDialog;Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 314
    iput-object p1, p0, Lcom/maya/sdk/m/views/UpdateDialog$5;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    iput-object p2, p0, Lcom/maya/sdk/m/views/UpdateDialog$5;->val$mMaterialDialog:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    iput-object p3, p0, Lcom/maya/sdk/m/views/UpdateDialog$5;->val$down_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 317
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$5;->val$mMaterialDialog:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->dismiss()V

    .line 318
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$5;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$5;->val$down_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/views/UpdateDialog;->startDownloadApk(Ljava/lang/String;)V

    .line 319
    return-void
.end method
